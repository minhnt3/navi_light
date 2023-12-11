import '../index.dart';

class AvoidUnnecessaryAsyncFunctionOption extends Excludable {
  const AvoidUnnecessaryAsyncFunctionOption({
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static AvoidUnnecessaryAsyncFunctionOption fromMap(Map<String, dynamic> map) {
    return AvoidUnnecessaryAsyncFunctionOption(
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
