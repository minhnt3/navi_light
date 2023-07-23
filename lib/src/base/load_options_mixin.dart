import '../index.dart';

const analysisOptionsKey = 'navi_light';

mixin LoadOptionsMixin {
  static Options _options = const Options();
  static bool _loaded = false;
  static final Completer<Options> _completer = Completer<Options>();
  Future<Options> get options async {
    if (_completer.isCompleted) {
      return _options;
    }
    return _completer.future;
  }

  Future<void> setUp(
    CustomLintResolver resolver,
    CustomLintContext context,
  ) async {
    // Only load the options once
    if (_loaded) {
      return;
    }
    _loaded = true;

    final filepath = resolver.path;

    try {
      final lintOptionsMap = await _getLintOptionsMap(dirname(filepath));
      if (lintOptionsMap != null) {
        _options = Options.fromMap(lintOptionsMap);
      }
      _completer.complete(_options);
    } on FileSystemException catch (_) {
      _completer.complete(const Options());
    }
  }
}

Future<Map<String, dynamic>?> _getLintOptionsMap(String filepath) async {
  final pubspec = Uri.parse(join(filepath, 'pubspec.yaml'));
  final pubspecFile = File.fromUri(pubspec);
  if (pubspecFile.existsSync()) {
    final analysisOptions = pubspec.resolve('analysis_options.yaml');
    final analysisOptionsFile = File.fromUri(analysisOptions);
    if (analysisOptionsFile.existsSync()) {
      final lintOptions = await _findLintOptions(analysisOptionsFile);
      if (lintOptions != null) {
        return lintOptions;
      }
    }

    final lintOptions = await _findLintOptions(pubspecFile);
    if (lintOptions != null) {
      return lintOptions;
    }
  }
  if (dirname(filepath) == filepath) {
    return null;
  }
  return _getLintOptionsMap(dirname(filepath));
}

Future<Map<String, dynamic>?> _findLintOptions(File file) async {
  final contents = await file.readAsString();
  final yamlMap = loadYaml(contents, sourceUrl: file.uri) as YamlMap;
  final lintOptions = yamlMap[analysisOptionsKey];
  if (lintOptions is YamlMap) {
    return lintOptions.toMap();
  }
  return null;
}
