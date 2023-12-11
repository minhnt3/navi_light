cl:
	flutter clean
	rm -rf pubspec.lock

pg:
	flutter pub get

format:
	find . -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart" ! -name "*.gr.dart" ! -name "*.config.dart" ! -name "*.mocks.dart" ! -name "*.mapper.dart" ! -path '*/example/*' ! -path '*/.dart_tool/*' | tr '\n' ' ' | xargs dart format --set-exit-if-changed -l 100

dry_run:
	flutter pub publish --dry-run

publish:
	flutter pub publish