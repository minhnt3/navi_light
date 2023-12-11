import 'src/index.dart';

PluginBase createPlugin() => _NaviLightPlugin();

class _NaviLightPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    print(configs.rules);
    return [
      AvoidUnnecessaryAsyncFunction(configs),
      LinesLongerThanMaximumChars(configs),
      PreferNamedParameters(configs),
      PreferIsEmptyString(configs),
      PreferIsNotEmptyString(configs),
      IncorrectTodoComment(configs),
    ];
  }
}
