import '../index.dart';

part 'prefer_is_empty_string_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PreferIsEmptyStringOption with PreferIsEmptyStringOptionMappable, OptionsMixin {
  const PreferIsEmptyStringOption({
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

  static const fromJson = PreferIsEmptyStringOptionMapper.fromJson;
  static const fromMap = PreferIsEmptyStringOptionMapper.fromMap;
}
