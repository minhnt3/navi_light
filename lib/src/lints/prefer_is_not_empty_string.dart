import '../index.dart';

class PreferIsNotEmptyString extends OptionsLintRule<PreferIsNotEmptyStringOption> {
  PreferIsNotEmptyString(
    CustomLintConfigs configs,
  ) : super(
          RuleConfig(
            name: lintName,
            configs: configs,
            paramsParser: PreferIsNotEmptyStringOption.fromMap,
            problemMessage: (_) =>
                'Use \'isNotEmpty\' instead of \'!=\' to test whether the string is empty.\nTry rewriting the expression to use \'isNotEmpty\'.',
          ),
        );

  static const String lintName = 'prefer_is_not_empty_string';
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

    context.registry.addBinaryExpression((node) {
      if (node.operator.type == TokenType.BANG_EQ &&
          (node.leftOperand.toString() == '\'\'' || node.rightOperand.toString() == '\'\'')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }

  @override
  List<Fix> getFixes() => [
        ReplaceWithIsNotEmpty(config),
      ];
}

class ReplaceWithIsNotEmpty extends OptionsFix<PreferIsNotEmptyStringOption> {
  ReplaceWithIsNotEmpty(super.config);

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) async {
    context.registry.addBinaryExpression((node) {
      if (!node.sourceRange.intersects(analysisError.sourceRange) ||
          node.operator.type != TokenType.BANG_EQ ||
          (node.leftOperand.toString() != '\'\'' && node.rightOperand.toString() != '\'\'')) {
        return;
      }

      final changeBuilder = reporter.createChangeBuilder(
        message: 'Replace with \'isNotEmpty\'',
        priority: 70,
      );

      final variable = node.leftOperand.toString() == '\'\'' ? node.rightOperand : node.leftOperand;

      changeBuilder.addDartFileEdit((builder) {
        builder.addSimpleReplacement(
            node.sourceRange,
            variable.staticType?.isNullableType == true
                ? '${variable.toString()}?.isNotEmpty == true'
                : '${variable.toString()}.isNotEmpty');
      });
    });
  }
}
