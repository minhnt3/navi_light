import '../index.dart';

part 'rules_option.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RulesOption with RulesOptionMappable {
  const RulesOption({
    this.linesLongerThanMaximumCharsOption = const LinesLongerThanMaximumCharsOption(),
    this.preferNamedParametersOption = const PreferNamedParametersOption(),
    this.preferIsEmptyStringOption = const PreferIsEmptyStringOption(),
    this.preferIsNotEmptyStringOption = const PreferIsNotEmptyStringOption(),
    this.incorrectTodoCommentOption = const IncorrectTodoCommentOption(),
    this.avoidUnnecessaryAsyncFunctionOption = const AvoidUnnecessaryAsyncFunctionOption(),
  });

  @MappableField(key: 'lines_longer_than_maximum_chars')
  final LinesLongerThanMaximumCharsOption linesLongerThanMaximumCharsOption;

  @MappableField(key: 'prefer_named_parameters')
  final PreferNamedParametersOption preferNamedParametersOption;

  @MappableField(key: 'prefer_is_empty_string')
  final PreferIsEmptyStringOption preferIsEmptyStringOption;

  @MappableField(key: 'prefer_is_not_empty_string')
  final PreferIsNotEmptyStringOption preferIsNotEmptyStringOption;

  @MappableField(key: 'incorrect_todo_comment')
  final IncorrectTodoCommentOption incorrectTodoCommentOption;

  @MappableField(key: 'avoid_unnecessary_async_function')
  final AvoidUnnecessaryAsyncFunctionOption avoidUnnecessaryAsyncFunctionOption;

  static const fromJson = RulesOptionMapper.fromJson;
  static const fromMap = RulesOptionMapper.fromMap;
}
