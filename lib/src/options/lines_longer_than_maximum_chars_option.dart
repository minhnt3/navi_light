import '../index.dart';

part 'lines_longer_than_maximum_chars_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LinesLongerThanMaximumCharsOption
    with LinesLongerThanMaximumCharsOptionMappable, OptionsMixin {
  const LinesLongerThanMaximumCharsOption({
    this.maximumChars = 100,
    this.exclude = const [],
    this.include = const [],
    this.severity = ErrorSeverity.INFO,
  });
  final int maximumChars;

  @MappableField(hook: ErrorSeverityHook())
  final ErrorSeverity severity;
  @override
  final List<String> exclude;
  @override
  final List<String> include;

  static const fromJson = LinesLongerThanMaximumCharsOptionMapper.fromJson;
  static const fromMap = LinesLongerThanMaximumCharsOptionMapper.fromMap;
}
