import '../index.dart';

class IncorrectTodoCommentOption extends Excludable {
  const IncorrectTodoCommentOption({
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static IncorrectTodoCommentOption fromMap(Map<String, dynamic> map) {
    return IncorrectTodoCommentOption(
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
