import '../index.dart';

class AvoidUnnecessaryAsyncFunction extends OptionsLintRule {
  const AvoidUnnecessaryAsyncFunction() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_unnecessary_async_function',
    problemMessage: 'This async function is unnecessary. Please remove \'async\' keyword',
  );

  @override
  void runWithOptions(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
    Options options,
  ) {
    if (options.isFileRuleExcluded(resolver.path)) {
      return;
    }

    final option = options.rules.avoidUnnecessaryAsyncFunctionOption;

    if (option.shouldSkipFile(resolver.path)) {
      return;
    }

    resolver.getResolvedUnitResult().then(
          (value) => value.unit.visitChildren(
            RecursiveFunctionAndMethodDeclarationVisitor(
              onVisitFunctionDeclaration: (node) {
                if (node.functionExpression.body.isAsynchronous &&
                    node.functionExpression.body is BlockFunctionBody &&
                    node.functionExpression.body.childAwaitExpressions.isEmpty &&
                    !_returnTypeIsFuture(node)) {
                  final code = this.code.copyWith(errorSeverity: option.severity);
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
                  final code = this.code.copyWith(errorSeverity: option.severity);
                  if (node.body.keyword != null) {
                    reporter.reportErrorForToken(code, node.body.keyword!);
                  } else {
                    reporter.reportErrorForNode(code, node);
                  }
                }
              },
            ),
          ),
        );
  }

  bool _returnTypeIsFuture(AstNode node) {
    return node.childReturnStatements
        .any((element) => element.expression?.staticType.toString().startsWith('Future') == true);
  }

  @override
  List<Fix> getFixes() => [
        RemoveUnnecessaryAsyncKeyWord(),
      ];
}

class RemoveUnnecessaryAsyncKeyWord extends OptionsFix {
  @override
  void runWithOptions(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
    Options options,
  ) {
    resolver.getResolvedUnitResult().then(
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
        );
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
