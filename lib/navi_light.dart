import 'src/index.dart';

PluginBase createPlugin() => _NalsLintsPlugin();

class _NalsLintsPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      const AvoidUnnecessaryAsyncFunction(),
      const LinesLongerThanMaximumChars(),
      const PreferNamedParameters(),
      const PreferIsEmptyString(),
      const PreferIsNotEmptyString(),
      const IncorrectTodoComment(),
    ];
  }
}
