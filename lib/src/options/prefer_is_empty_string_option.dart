import '../index.dart';

class PreferIsEmptyStringOption extends Excludable {
  const PreferIsEmptyStringOption({
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static PreferIsEmptyStringOption fromMap(Map<String, dynamic> map) {
    return PreferIsEmptyStringOption(
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
