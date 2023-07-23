import '../index.dart';

class IncorrectTodoComment extends OptionsLintRule {
  const IncorrectTodoComment() : super(code: _code);

  static const _code = LintCode(
    name: 'incorrect_todo_comment',
    problemMessage:
        'TODO comments must have username, description and issue number (or #0 if no issue).\n'
        'Example: // TODO(username): some description text #123.',
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

    final option = options.rules.incorrectTodoCommentOption;

    if (option.shouldSkipFile(resolver.path)) {
      return;
    }

    resolver.getLineContents((codeLine) {
      if (codeLine.isEndOfLineComment) {
        if (codeLine.content.contains(RegExp(r'//\s*TODO')) &&
            !RegExp(r'^\/\/\s*TODO\(.+\):.*\S.*#\d+.*$').hasMatch(codeLine.content.trim())) {
          final code = this.code.copyWith(errorSeverity: option.severity);
          reporter.reportErrorForOffset(code, codeLine.lineOffset, codeLine.lineLength);
        }
      }
    });
  }
}
