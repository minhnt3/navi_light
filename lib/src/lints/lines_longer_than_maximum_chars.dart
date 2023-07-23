import '../index.dart';

class LinesLongerThanMaximumChars extends OptionsLintRule {
  const LinesLongerThanMaximumChars() : super(code: _code);

  static const _code = LintCode(
    name: 'lines_longer_than_maximum_chars',
    problemMessage:
        'The line length exceeds the maximum character limit.\nTry breaking the line across multiple lines.',
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

    final option = options.rules.linesLongerThanMaximumCharsOption;

    if (option.shouldSkipFile(resolver.path)) {
      return;
    }

    resolver.getLineContents((codeLine) {
      if (codeLine.lineLength > option.maximumChars &&
          !codeLine.isComment &&
          !codeLine.isImportStatement &&
          !codeLine.isExportStatement &&
          !codeLine.isString) {
        final code = this.code.copyWith(errorSeverity: option.severity);
        reporter.reportErrorForOffset(code, codeLine.lineOffset, codeLine.lineLength);
      }
    });
  }

  @override
  List<Fix> getFixes() => [
        FormatCode(),
      ];
}

class FormatCode extends OptionsFix {
  @override
  void runWithOptions(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
    Options options,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Format this document',
      priority: 78,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.formatWithPageWidth(resolver.documentRange);
    });
  }
}
