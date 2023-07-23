<!-- omit from toc -->
# All Lint Rules

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Configuring Lints](#configuring-lints)
- [Dart](#dart)
  - [lines_longer_than_maximum_chars](#lines_longer_than_maximum_chars)
  - [prefer_named_parameters](#prefer_named_parameters)
  - [incorrect_todo_comment](#incorrect_todo_comment)
  - [prefer_is_empty_string](#prefer_is_empty_string)
  - [prefer_is_not_empty_string](#prefer_is_not_empty_string)
  - [avoid_unnecessary_async_function](#avoid_unnecessary_async_function)

## Configuring Lints

All lints have configuration options available, these can be specified in the `analysis_options.yaml`
or the `pubspec.yaml` file, an example is shown below. Each lint may also have additional options
available that are covered in their respective sections below.

All lints have the following options:

- `severity`: This can be set to `none`, `info`, `warning` or `error`.
- `include`: Only lint files matching these regular expressions.
- `exclude`: Skip linting files matching these regular expressions.

```yaml
navi_light:
  rules_exclude:
    - "test/.*\\.dart"
  rules:
    lines_longer_than_maximum_chars:
      maximum_chars: 100
      severity: info
      include:
        - "lib/.*\\.dart"
      exclude:
        - "lib/.*_temp\\.dart"
    prefer_named_parameters:
      threshold: 2
      severity: warning
    incorrect_todo_comment:
      severity: error
```

## Dart

### lines_longer_than_maximum_chars


The number of characters per line of code must not exceed the maximum character limit.

```yaml
lines_longer_than_maximum_chars:
  maximum_chars: 100
  severity: info
```

**Bad**:

```dart
const a = 'very long long long long long long long long long long long long long long long long long long long long long comment'; // LINT
```

### prefer_named_parameters


If a function or constructor takes more parameters than the threshold, use named parameters.

```yaml
prefer_named_parameters:
  threshold: 2
  severity: warning
```

**Good**:

```dart
class A {
  final String a;
  final String b;

  A({
    required this.a,
    required this.b,
  });

  A.a({
    required this.a,
    this.b = '',
  });

  A.b({
    required this.a,
    String? b,
  }) : b = b ?? '';

  void test2({
    required String a,
    String b = '',
  }) {}
}

void test2({
  String a = '',
  String? b,
}) {}
```

**Bad**:

```dart
class B {
  final String a;
  final String b;

  B(this.a, this.b); // LINT
  B.a(this.a, [this.b = '']); // LINT
  B.b(this.a, {this.b = ''}); // LINT
  B.c(this.a, {required this.b}); // LINT
  B.d(this.a, String? b) : b = b ?? ''; // LINT
}

void test4(String a, String b) {} // LINT
void test5(String a, [String b = '']) {} // LINT
void test6(String a, {required String b}) {} // LINT
void test7(String a, {String b = ''}) {} // LINT
void test8(String a, {String? b}) {} // LINT
void test9([String? a, String? b = '']) {} // LINT
```

### incorrect_todo_comment

TODO comments must have username, description and issue number (or #0 if no issue). 

Example: `// TODO(username): some description text #123.`

```yaml
incorrect_todo_comment:
  severity: warning
```

**Good**:

```dart
// TODO(minhnt3): Remove this file when the issue is fixed #123 issue number.

// TODO(minhnt3): Remove this file when the issue is fixed #0
```

**Bad**:

```dart
// TODO(minhnt3): Remove this file when the issue is fixed.

// TODO: Remove this file when the issue is fixed #123.

// TODO(minhnt3): Remove this file when the issue is fixed #-123 .

// TODO(minhnt3)     : Remove this file when the issue is fixed #-123 .

// TODO   (minhnt3): Remove this file when the issue is fixed #123 .

// TODO(minhnt3):               #123  .

// TODO() Remove this file when the issue is fixed #123.
```

### prefer_is_empty_string

Use `isEmpty` instead of `==` to test whether the string is empty.

```yaml
prefer_is_empty_string:
  severity: warning
```

**Good**:

```dart
void test(String a) {
  if (a.isEmpty) {}
}
```

**Bad**:

```dart
void test(String a) {
  if (a == '') {}

  if ('' == a) {}
}
```

### prefer_is_not_empty_string

Use `isNotEmpty` instead of `==` to test whether the string is empty..

```yaml
prefer_is_not_empty_string:
  severity: warning
```

**Good**:

```dart
void test(String a) {
  if (a.isNotEmpty) {}
}
```

**Bad**:

```dart
void test(String a) {
  if (a != '') {}

  if ('' != a) {}
}
```

### avoid_unnecessary_async_function

If a function does not have any asynchronous computation, there is no need to create an async function.

```yaml
avoid_unnecessary_async_function:
  severity: warning
```

**Good**:

```dart
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
```

**Bad**:

```dart
Future<void> logout() async {
  print('logout');
}

FutureOr<String> getFullName() async {
  return 'name';
}

FutureOr<int?> getUserAge() async {
  try {
    print('do something');

    return 3;
  } catch (e) {
    return null;
  }
}

class Notifier {
  Future<void> login() async {
    Future(() => print('hello'));

    print('login');
  }

  FutureOr<String> getName() async {
    unawaited(Future<dynamic>.delayed(const Duration(milliseconds: 2000)));

    return 'name';
  }
}
```
