import '../index.dart';

abstract class OptionsFix extends DartFix with LoadOptionsMixin {
  @override
  Future<void> startUp(
    CustomLintResolver resolver,
    CustomLintContext context,
  ) async {
    await setUp(resolver, context);
    await super.startUp(resolver, context);
  }

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) async {
    final options = await this.options;
    runWithOptions(resolver, reporter, context, analysisError, others, options);
  }

  /// Emits lints for a given file.
  ///
  /// [runWithOptions] will only be invoked with files respecting [filesToAnalyze]
  void runWithOptions(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
    Options options,
  );
}
