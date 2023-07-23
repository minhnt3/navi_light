import 'dart:async';

// ~.~.~.~.~.~.~.~ THE FOLLOWING CASES SHOULD NOT BE WARNED ~.~.~.~.~.~.~.~
Future<void> login() async {
  await Future<dynamic>.delayed(const Duration(milliseconds: 2000));
  print('login');
}

FutureOr<String> getName() async {
  return Future(() => 'name');
}

FutureOr<int?> getAge() async {
  try {
    print('do something');

    return Future.value(3);
  } catch (e) {
    return null;
  }
}

class AsyncNotifier {
  Future<void> login() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 2000));
    print('login');
  }

  FutureOr<String> getName() async {
    return Future(() => 'name');
  }

  FutureOr<int?> getAge() async {
    try {
      print('do something');

      return Future.value(3);
    } catch (e) {
      return null;
    }
  }
}

// ~.~.~.~.~.~.~.~ THE FOLLOWING CASES SHOULD BE WARNED ~.~.~.~.~.~.~.~
// expect_lint: avoid_unnecessary_async_function
Future<void> logout() async {
  print('logout');
}

// expect_lint: avoid_unnecessary_async_function
FutureOr<String> getFullName() async {
  return 'name';
}

// expect_lint: avoid_unnecessary_async_function
FutureOr<int?> getUserAge() async {
  try {
    print('do something');

    return 3;
  } catch (e) {
    return null;
  }
}

class Notifier {
  // expect_lint: avoid_unnecessary_async_function
  Future<void> login() async {
    Future(() => print('hello'));

    print('login');
  }

  // expect_lint: avoid_unnecessary_async_function
  FutureOr<String> getName() async {
    unawaited(Future<dynamic>.delayed(const Duration(milliseconds: 2000)));

    return 'name';
  }
}
