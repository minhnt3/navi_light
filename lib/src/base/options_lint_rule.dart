import '../index.dart';

abstract class OptionsLintRule extends DartLintRule with LoadOptionsMixin {
  const OptionsLintRule({required super.code});

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
    ErrorReporter reporter,
    CustomLintContext context,
  ) async {
    final options = await this.options;
    runWithOptions(resolver, reporter, context, options);
  }

  /// Emits lints for a given file.
  ///
  /// [runWithOptions] will only be invoked with files respecting [filesToAnalyze]
  void runWithOptions(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
    Options options,
  );
}
