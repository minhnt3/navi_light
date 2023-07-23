import '../index.dart';

part 'prefer_is_not_empty_string_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PreferIsNotEmptyStringOption with PreferIsNotEmptyStringOptionMappable, OptionsMixin {
  const PreferIsNotEmptyStringOption({
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

  static const fromJson = PreferIsNotEmptyStringOptionMapper.fromJson;
  static const fromMap = PreferIsNotEmptyStringOptionMapper.fromMap;
}
