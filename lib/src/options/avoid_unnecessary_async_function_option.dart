import '../index.dart';

part 'avoid_unnecessary_async_function_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class AvoidUnnecessaryAsyncFunctionOption
    with AvoidUnnecessaryAsyncFunctionOptionMappable, OptionsMixin {
  const AvoidUnnecessaryAsyncFunctionOption({
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

  static const fromJson = AvoidUnnecessaryAsyncFunctionOptionMapper.fromJson;
  static const fromMap = AvoidUnnecessaryAsyncFunctionOptionMapper.fromMap;
}
