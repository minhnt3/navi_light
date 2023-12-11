import '../index.dart';

class PreferNamedParameters extends OptionsLintRule<PreferNamedParametersOption> {
  PreferNamedParameters(
    CustomLintConfigs configs,
  ) : super(
          RuleConfig(
              name: lintName,
              configs: configs,
              paramsParser: PreferNamedParametersOption.fromMap,
              problemMessage: (_) =>
                  'If a function or constructor takes more parameters than the threshold, use named parameters'),
        );

  static const String lintName = 'prefer_named_parameters';

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

    unawaited(resolver.getResolvedUnitResult().then((value) =>
        value.unit.visitChildren(RecursiveConstructorAndFunctionAndMethodDeclarationVisitor(
          onVisitFunctionDeclaration: (FunctionDeclaration node) {
            final formalParams =
                node.functionExpression.parameters?.parameters ?? <FormalParameter>[];
            if (formalParams.length >= parameters.threshold &&
                formalParams.where((element) => element.isNamed).length != formalParams.length) {
              reporter.reportErrorForNode(code, node.functionExpression.parameters!);
            }
          },
          onVisitMethodDeclaration: (MethodDeclaration node) {
            final formalParams = node.parameters?.parameters ?? <FormalParameter>[];
            if (formalParams.length >= parameters.threshold &&
                !node.isOverrideMethod &&
                formalParams.where((element) => element.isNamed).length != formalParams.length) {
              reporter.reportErrorForNode(code, node.parameters!);
            }
          },
          onVisitConstructorDeclaration: (ConstructorDeclaration node) {
            final formalParams = node.parameters.parameters;
            if (formalParams.length >= parameters.threshold &&
                !_isConstuctorDeclarationException(node) &&
                formalParams.where((element) => element.isNamed).length != formalParams.length) {
              reporter.reportErrorForNode(code, node.parameters);
            }
          },
        ))));
  }

  bool _isConstuctorDeclarationException(ConstructorDeclaration node) {
    return node.name.toString() == 'fromJson' ||
        node.parentClassDeclaration?.toString().trim().startsWith(
                RegExp(r'@injectable|@lazySingleton|@singleton', caseSensitive: false)) ==
            true;
  }

  @override
  List<Fix> getFixes() => [
        ConvertToNamedParameters(config),
      ];
}

class ConvertToNamedParameters extends OptionsFix<PreferNamedParametersOption> {
  ConvertToNamedParameters(super.config);

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) async {
    unawaited(resolver.getResolvedUnitResult().then((value) => value.unit.visitChildren(
            RecursiveConstructorAndFunctionAndMethodDeclarationVisitor(
                onVisitFunctionDeclaration: (FunctionDeclaration node) {
          if (node.functionExpression.parameters == null ||
              !node.functionExpression.parameters!.sourceRange
                  .intersects(analysisError.sourceRange)) {
            return;
          }

          _fix(parameterList: node.functionExpression.parameters!, reporter: reporter);
        }, onVisitMethodDeclaration: (MethodDeclaration node) {
          if (node.parameters == null ||
              !node.parameters!.sourceRange.intersects(analysisError.sourceRange)) {
            return;
          }

          _fix(parameterList: node.parameters!, reporter: reporter);
        }, onVisitConstructorDeclaration: (node) {
          if (!node.parameters.sourceRange.intersects(analysisError.sourceRange)) {
            return;
          }

          _fix(
            parameterList: node.parameters,
            reporter: reporter,
          );
        }))));
  }

  void _fix({
    required FormalParameterList parameterList,
    required ChangeReporter reporter,
  }) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Convert to named parameters',
      priority: 76,
    );

    final parameters = parameterList.parameters
        .map((e) => e.declaredElement?.type.isNullableType == true ||
                e.declaredElement?.hasDefaultValue == true ||
                e.toString().trim().startsWith('required')
            ? e.toString()
            : 'required $e')
        .join(', ');

    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(parameterList.sourceRange, '({$parameters,})');
      builder.formatWithPageWidth(parameterList.sourceRange);
    });
  }
}
