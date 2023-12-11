import '../index.dart';

class LinesLongerThanMaximumCharsOption extends Excludable {
  const LinesLongerThanMaximumCharsOption({
    this.maximumChars = 100,
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });
  final int maximumChars;

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static LinesLongerThanMaximumCharsOption fromMap(Map<String, dynamic> map) {
    return LinesLongerThanMaximumCharsOption(
      maximumChars: map['maximum_chars'] as int? ?? 100,
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
