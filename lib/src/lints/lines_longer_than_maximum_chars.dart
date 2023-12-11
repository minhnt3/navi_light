import '../index.dart';

class LinesLongerThanMaximumChars extends OptionsLintRule<LinesLongerThanMaximumCharsOption> {
  LinesLongerThanMaximumChars(
    CustomLintConfigs configs,
  ) : super(
          RuleConfig(
            name: lintName,
            configs: configs,
            paramsParser: LinesLongerThanMaximumCharsOption.fromMap,
            problemMessage: (_) =>
                'The line length exceeds the maximum character limit.\nTry breaking the line across multiple lines.',
          ),
        );

  static const String lintName = 'lines_longer_than_maximum_chars';

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

    resolver.getLineContents((codeLine) {
      if (codeLine.lineLength > parameters.maximumChars &&
          !codeLine.isComment &&
          !codeLine.isImportStatement &&
          !codeLine.isExportStatement &&
          !codeLine.isString) {
        reporter.reportErrorForOffset(code, codeLine.lineOffset, codeLine.lineLength);
      }
    });
  }

  @override
  List<Fix> getFixes() => [
        FormatCode(config),
      ];
}

class FormatCode extends OptionsFix<LinesLongerThanMaximumCharsOption> {
  FormatCode(super.config);

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) async {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Format this document',
      priority: 78,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.formatWithPageWidth(
        resolver.documentRange,
        pageWidth: config.parameters.maximumChars,
      );
    });
  }
}
