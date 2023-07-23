import '../index.dart';

part 'incorrect_todo_comment_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class IncorrectTodoCommentOption with IncorrectTodoCommentOptionMappable, OptionsMixin {
  const IncorrectTodoCommentOption({
    this.exclude = const [],
    this.include = const [],
    this.severity = ErrorSeverity.INFO,
  });

  @MappableField(hook: ErrorSeverityHook())
  final ErrorSeverity severity;
  @override
  final List<String> exclude;
  @override
  final List<String> include;

  static const fromJson = IncorrectTodoCommentOptionMapper.fromJson;
  static const fromMap = IncorrectTodoCommentOptionMapper.fromMap;
}
