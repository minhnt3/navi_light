import '../index.dart';

class IncorrectTodoComment extends OptionsLintRule<IncorrectTodoCommentOption> {
  IncorrectTodoComment(
    CustomLintConfigs configs,
  ) : super(
          RuleConfig(
              name: lintName,
              configs: configs,
              paramsParser: IncorrectTodoCommentOption.fromMap,
              problemMessage: (_) =>
                  'TODO comments must have username, description and issue number (or #0 if no issue).\n'
                  'Example: // TODO(username): some description text #123.'),
        );

  static const String lintName = 'incorrect_todo_comment';

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
      if (codeLine.isEndOfLineComment) {
        if (codeLine.content.contains(RegExp(r'//\s*TODO')) &&
            !RegExp(r'^\/\/\s*TODO\(.+\):.*\S.*#\d+.*$').hasMatch(codeLine.content.trim())) {
          reporter.reportErrorForOffset(code, codeLine.lineOffset, codeLine.lineLength);
        }
      }
    });
  }
}
