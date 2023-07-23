import '../../index.dart';

mixin OptionsMixin {
  List<String> get exclude;
  List<String> get include;

  bool isFileNotExcluded(String path) {
    return !isFileExcluded(path);
  }

  bool isFileExcluded(String path) {
    return exclude.toRegExpList().has(path);
  }

  bool isFileNotIncluded(String path) {
    return !isFileIncluded(path);
  }

  bool isFileIncluded(String path) {
    return include.toRegExpList().has(path);
  }

  bool get isIncludeOnly => include.isNotEmpty;

  bool shouldSkipFile(String path) {
    if (isIncludeOnly) {
      return isFileNotIncluded(path) || isFileExcluded(path);
    }

    return isFileExcluded(path);
  }
}
