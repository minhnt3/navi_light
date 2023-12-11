import '../index.dart';

class PreferNamedParametersOption extends Excludable {
  const PreferNamedParametersOption({
    this.threshold = 2,
    this.excludes = const [],
    this.includes = const [],
    this.severity,
  });
  final int threshold;

  final ErrorSeverity? severity;
  @override
  final List<String> excludes;
  @override
  final List<String> includes;

  static PreferNamedParametersOption fromMap(Map<String, dynamic> map) {
    print(map);
    return PreferNamedParametersOption(
      threshold: map['threshold'] as int? ?? 2,
      excludes: map['excludes'] as List<String>? ?? const [],
      includes: map['includes'] as List<String>? ?? const [],
      severity: convertStringToErrorSeverity(map['severity']),
    );
  }
}
