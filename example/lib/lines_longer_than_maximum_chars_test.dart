// ~.~.~.~.~.~.~.~ THE FOLLOWING CASES SHOULD NOT BE WARNED ~.~.~.~.~.~.~.~

// import statements are not counted
import '../../../../../../../../../../../../../../../../../avoid_unnecessary_async_function_test.dart';

void veryShortFunction() {
  Notifier();
}

// very long long long long long long long long long long long long long long long long long long long long long comment

/* very long long long long long long long long long long long long long long long long long long long long long comment
very long long long long long long long long long long long long long long long long long long long long long comment
very long long long long long long long long long long long long long long long long long long long long long comment */

/// very long long long long long long long long long long long long long long long long long long long long long comment

String longString() {
  const a =
      'very long long long long long long long long long long long long long long long long long long long long long comment';

  final regex = RegExp(
      r'very long long long long long long long long long long long long long long long long long long long long long comment');

  print(
      '$a very long long long long long long long long long long long long long long long long long long long long long comment');

  return '$regex very long long long long long long long long long long long long long long long long long long long long long comment';
}

// ~.~.~.~.~.~.~.~ THE FOLLOWING CASES SHOULD BE WARNED ~.~.~.~.~.~.~.~

// expect_lint: lines_longer_than_maximum_chars
void veryLongLongLongLongLongLongLongFunction(String veryLongLongLongLongLongLongLongLongParameter) {
  // expect_lint: lines_longer_than_maximum_chars
  const a = 'very long long long long long long long long long long long long long long long long long long long long long comment';
  // expect_lint: lines_longer_than_maximum_chars
  final regex = RegExp(r'very long long long long long long long long long long long long long long long long long long long long long comment');
  // expect_lint: lines_longer_than_maximum_chars
  print('$a $regex very long long long long long long long long long long long long long long long long long long long long long comment');
}
