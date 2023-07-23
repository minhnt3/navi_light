import '../index.dart';

part 'prefer_named_parameters_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PreferNamedParametersOption with PreferNamedParametersOptionMappable, OptionsMixin {
  const PreferNamedParametersOption({
    this.threshold = 2,
    this.exclude = const [],
    this.include = const [],
    this.severity = ErrorSeverity.INFO,
  });
  final int threshold;

  @MappableField(hook: ErrorSeverityHook())
  final ErrorSeverity severity;
  @override
  final List<String> exclude;
  @override
  final List<String> include;

  static const fromJson = PreferNamedParametersOptionMapper.fromJson;
  static const fromMap = PreferNamedParametersOptionMapper.fromMap;
}
