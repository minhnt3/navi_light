import '../index.dart';

abstract class OptionsAssist extends DartAssist with LoadOptionsMixin {
  @override
  Future<void> startUp(
    CustomLintResolver resolver,
    CustomLintContext context,
    SourceRange target,
  ) async {
    await setUp(resolver, context);
    await super.startUp(resolver, context, target);
  }

  @override
  Future<void> run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    SourceRange target,
  ) async {
    final options = await this.options;
    runWithOptions(resolver, reporter, context, target, options);
  }

  /// Emits lints for a given file.
  ///
  /// [runWithOptions] will only be invoked with files respecting [filesToAnalyze]
  void runWithOptions(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    SourceRange target,
    Options options,
  );
}
