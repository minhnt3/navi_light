import '../index.dart';

class PreferIsNotEmptyStringOption extends Excludable {
  const PreferIsNotEmptyStringOption({
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static PreferIsNotEmptyStringOption fromMap(Map<String, dynamic> map) {
    return PreferIsNotEmptyStringOption(
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
