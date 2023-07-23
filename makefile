build_runner:
	dart run build_runner build --verbose

force_build_runner:
	dart run build_runner build --delete-conflicting-outputs --verbose

watch_runner:
	dart run build_runner watch --verbose

force_watch_runner:
	dart run build_runner watch --delete-conflicting-outputs --verbose

format:
	find . -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart" ! -name "*.gr.dart" ! -name "*.config.dart" ! -name "*.mocks.dart" ! -name "*.mapper.dart" ! -path '*/example/*' ! -path '*/.dart_tool/*' | tr '\n' ' ' | xargs dart format --set-exit-if-changed -l 100

dry_run:
	flutter pub publish --dry-run

publish:
	flutter pub publish