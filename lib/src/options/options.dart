import '../index.dart';

part 'options.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Options with OptionsMappable {
  const Options({
    this.rules = const RulesOption(),
    this.rulesExclude = const [],
  });

  final RulesOption rules;
  final List<String> rulesExclude;

  static const fromJson = OptionsMapper.fromJson;
  static const fromMap = OptionsMapper.fromMap;
}

extension OptionsExtension on Options {
  bool isFileRuleExcluded(String path) {
    return rulesExclude.toRegExpList().has(path);
  }
}
