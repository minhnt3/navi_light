import '../index.dart';

class AvoidUnnecessaryAsyncFunction extends OptionsLintRule<AvoidUnnecessaryAsyncFunctionOption> {
  AvoidUnnecessaryAsyncFunction(
    CustomLintConfigs configs,
  ) : super(
          RuleConfig(
              name: lintName,
              configs: configs,
              paramsParser: AvoidUnnecessaryAsyncFunctionOption.fromMap,
              problemMessage: (_) =>
                  'This async function is unnecessary. Please remove \'async\' keyword'),
        );

  static const String lintName = 'avoid_unnecessary_async_function';

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) async {
    final rootPath = await resolver.rootPath;
    final parameters = config.parameters;
    if (parameters.shouldSkipAnalysis(
      path: resolver.path,
      rootPath: rootPath,
    )) {
      return;
    }

    final code = this.code.copyWith(
          errorSeverity: parameters.severity ?? this.code.errorSeverity,
        );

    unawaited(resolver.getResolvedUnitResult().then(
          (value) => value.unit.visitChildren(
            RecursiveFunctionAndMethodDeclarationVisitor(
              onVisitFunctionDeclaration: (node) {
                if (node.functionExpression.body.isAsynchronous &&
                    node.functionExpression.body is BlockFunctionBody &&
                    node.functionExpression.body.childAwaitExpressions.isEmpty &&
                    !_returnTypeIsFuture(node)) {
                  if (node.functionExpression.body.keyword != null) {
                    reporter.reportErrorForToken(code, node.functionExpression.body.keyword!);
                  } else {
                    reporter.reportErrorForNode(code, node);
                  }
                }
              },
              onVisitMethodDeclaration: (node) {
                if (node.body.isAsynchronous &&
                    !node.isOverrideMethod &&
                    node.body is BlockFunctionBody &&
                    node.body.childAwaitExpressions.isEmpty &&
                    !_returnTypeIsFuture(node)) {
                  if (node.body.keyword != null) {
                    reporter.reportErrorForToken(code, node.body.keyword!);
                  } else {
                    reporter.reportErrorForNode(code, node);
                  }
                }
              },
            ),
          ),
        ));
  }

  bool _returnTypeIsFuture(AstNode node) {
    return node.childReturnStatements
        .any((element) => element.expression?.staticType.toString().startsWith('Future') == true);
  }

  @override
  List<Fix> getFixes() => [
        RemoveUnnecessaryAsyncKeyWord(config),
      ];
}

class RemoveUnnecessaryAsyncKeyWord extends OptionsFix<AvoidUnnecessaryAsyncFunctionOption> {
  RemoveUnnecessaryAsyncKeyWord(super.config);

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) async {
    unawaited(resolver.getResolvedUnitResult().then(
          (value) => value.unit.visitChildren(
            RecursiveFunctionAndMethodDeclarationVisitor(
              onVisitFunctionDeclaration: (node) {
                _fix(
                  sourceRange: node.sourceRange,
                  analysisError: analysisError,
                  reporter: reporter,
                  returnType: node.returnType,
                );
              },
              onVisitMethodDeclaration: (node) {
                _fix(
                  sourceRange: node.sourceRange,
                  analysisError: analysisError,
                  reporter: reporter,
                  returnType: node.returnType,
                );
              },
            ),
          ),
        ));
  }

  void _fix({
    required SourceRange sourceRange,
    required AnalysisError analysisError,
    required ChangeReporter reporter,
    required TypeAnnotation? returnType,
  }) {
    if (!sourceRange.intersects(analysisError.sourceRange)) {
      return;
    }

    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remove unnecessary async keyword',
      priority: 79,
    );

    changeBuilder.addDartFileEdit((builder) {
      builder.addDeletion(analysisError.sourceRange);
      if (returnType != null && returnType.toString().startsWith('Future')) {
        builder.addSimpleReplacement(
            returnType.sourceRange,
            returnType.toString().replaceFirstMapped(RegExp(r'(Future<|FutureOr<)(.+)>'), (match) {
              return match.group(2) ?? '';
            }));
      }
      builder.formatWithPageWidth(sourceRange);
    });
  }
}
