<!-- omit from toc -->
# navi_light

`navi_light` is a developer tool, designed to help stop common issues and simplify repetitive tasks. It adds various warnings with quick fixes and refactoring options.


## Table of Contents

- [Usage](#usage)
  - [Installing custom\_lints\_template](#installing-navi_light)
  - [Enabling/disabling lints](#enablingdisabling-lints)
  - [Disable one specific rule](#disable-one-specific-rule)
  - [Disable all lints by default](#disable-all-lints-by-default)
  - [Configuring Lints](#configuring-lints)
  - [Running custom\_lints\_template in the terminal/CI](#running-navi_light-in-the-terminalci)
- [All Lint Rules](#all-lint-rules)
- [Resources](#resources)

## Usage

### Installing navi_light

`navi_light` is implemented using [custom_lint](https://pub.dev/packages/custom_lint). As such, it uses `custom_lint`'s installation logic.  
Long story short:

- Add both `navi_light` and `custom_lint` to your `pubspec.yaml`:

  ```yaml
  dev_dependencies:
    custom_lint:
    navi_light:
  ```

- Enable `custom_lint`'s plugin in your `analysis_options.yaml`:

  ```yaml
  analyzer:
    plugins:
      - custom_lint
  ```

### Enabling/disabling lints

By default when installing `navi_light`, most of the lints will be enabled.
To change this, you have a few options.

### Disable one specific rule

You may dislike one of the various lint rules offered by `navi_light`.
In that event, you can explicitly disable this lint rule for your project
by modifying the `analysis_options.yaml`

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
  rules:
    # Explicitly disable one lint rule
    - lines_longer_than_maximum_chars: false
```

Note that you can both enable and disable lint rules at once.
This can be useful if your `analysis_options.yaml` includes another one:

```yaml
include: path/to/another/analysis_options.yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
  rules:
    # Enable one rule
    - lines_longer_than_maximum_chars
    # Disable another
    - prefer_named_parameters: false
```

### Disable all lints by default

Instead of having all lints on by default and manually disabling lints of your choice,
you can switch to the opposite logic:  
Have lints off by default, and manually enable lints.

This can be done in your `analysis_options.yaml` with the following:

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
  # Forcibly disable lint rules by default
  enable_all_lint_rules: false
  rules:
    # You can now enable one specific rule in the "rules" list
    - prefer_named_parameters
```

### Configuring Lints

Some of the lints have configurations. These can be specified in the `analysis_options.yaml`
or the `pubspec.yaml` file under the top level key `navi_light:`.

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

### Running navi_light in the terminal/CI

Custom lint rules created by navi_light may not show-up in `dart analyze`.
To fix this, you can run a custom command line: `custom_lint`.

Since your project should already have custom_lint installed
(cf [installing navi_light](#installing-navi_light)), then you should be
able to run:

```sh
dart run custom_lint
```

Alternatively, you can globally install `custom_lint`:

```sh
# Install custom_lint for all projects
dart pub global activate custom_lint
# run custom_lint's command line in a project
custom_lint
```

## All Lint Rules

Most lints have configuration options. These can be specified in the `analysis_options.yaml` or the `pubspec.yaml`.
See [LINTS.md](doc/LINTS.md) for a list of implemented lint rules and their configuration options.

## Resources

- [Example lints](https://github.com/invertase/dart_custom_lint/blob/main/packages/custom_lint/example/example_lint/lib/custom_lint_example_lint.dart)
- [Riverpod Lint](https://github.com/rrousselGit/riverpod/tree/master/packages/riverpod_lint)
- [nals_lints](https://github.com/ntminhdn/Flutter-Bloc-CleanArchitecture/tree/master/nals_lints/lib/src/lints)
