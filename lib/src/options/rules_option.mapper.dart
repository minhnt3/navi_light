// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'rules_option.dart';

class RulesOptionMapper extends ClassMapperBase<RulesOption> {
  RulesOptionMapper._();

  static RulesOptionMapper? _instance;
  static RulesOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RulesOptionMapper._());
      LinesLongerThanMaximumCharsOptionMapper.ensureInitialized();
      PreferNamedParametersOptionMapper.ensureInitialized();
      PreferIsEmptyStringOptionMapper.ensureInitialized();
      PreferIsNotEmptyStringOptionMapper.ensureInitialized();
      IncorrectTodoCommentOptionMapper.ensureInitialized();
      AvoidUnnecessaryAsyncFunctionOptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'RulesOption';

  static LinesLongerThanMaximumCharsOption _$linesLongerThanMaximumCharsOption(
          RulesOption v) =>
      v.linesLongerThanMaximumCharsOption;
  static const Field<RulesOption, LinesLongerThanMaximumCharsOption>
      _f$linesLongerThanMaximumCharsOption = Field(
          'linesLongerThanMaximumCharsOption',
          _$linesLongerThanMaximumCharsOption,
          key: 'lines_longer_than_maximum_chars',
          opt: true,
          def: const LinesLongerThanMaximumCharsOption());
  static PreferNamedParametersOption _$preferNamedParametersOption(
          RulesOption v) =>
      v.preferNamedParametersOption;
  static const Field<RulesOption, PreferNamedParametersOption>
      _f$preferNamedParametersOption = Field(
          'preferNamedParametersOption', _$preferNamedParametersOption,
          key: 'prefer_named_parameters',
          opt: true,
          def: const PreferNamedParametersOption());
  static PreferIsEmptyStringOption _$preferIsEmptyStringOption(RulesOption v) =>
      v.preferIsEmptyStringOption;
  static const Field<RulesOption, PreferIsEmptyStringOption>
      _f$preferIsEmptyStringOption = Field(
          'preferIsEmptyStringOption', _$preferIsEmptyStringOption,
          key: 'prefer_is_empty_string',
          opt: true,
          def: const PreferIsEmptyStringOption());
  static PreferIsNotEmptyStringOption _$preferIsNotEmptyStringOption(
          RulesOption v) =>
      v.preferIsNotEmptyStringOption;
  static const Field<RulesOption, PreferIsNotEmptyStringOption>
      _f$preferIsNotEmptyStringOption = Field(
          'preferIsNotEmptyStringOption', _$preferIsNotEmptyStringOption,
          key: 'prefer_is_not_empty_string',
          opt: true,
          def: const PreferIsNotEmptyStringOption());
  static IncorrectTodoCommentOption _$incorrectTodoCommentOption(
          RulesOption v) =>
      v.incorrectTodoCommentOption;
  static const Field<RulesOption, IncorrectTodoCommentOption>
      _f$incorrectTodoCommentOption = Field(
          'incorrectTodoCommentOption', _$incorrectTodoCommentOption,
          key: 'incorrect_todo_comment',
          opt: true,
          def: const IncorrectTodoCommentOption());
  static AvoidUnnecessaryAsyncFunctionOption
      _$avoidUnnecessaryAsyncFunctionOption(RulesOption v) =>
          v.avoidUnnecessaryAsyncFunctionOption;
  static const Field<RulesOption, AvoidUnnecessaryAsyncFunctionOption>
      _f$avoidUnnecessaryAsyncFunctionOption = Field(
          'avoidUnnecessaryAsyncFunctionOption',
          _$avoidUnnecessaryAsyncFunctionOption,
          key: 'avoid_unnecessary_async_function',
          opt: true,
          def: const AvoidUnnecessaryAsyncFunctionOption());

  @override
  final Map<Symbol, Field<RulesOption, dynamic>> fields = const {
    #linesLongerThanMaximumCharsOption: _f$linesLongerThanMaximumCharsOption,
    #preferNamedParametersOption: _f$preferNamedParametersOption,
    #preferIsEmptyStringOption: _f$preferIsEmptyStringOption,
    #preferIsNotEmptyStringOption: _f$preferIsNotEmptyStringOption,
    #incorrectTodoCommentOption: _f$incorrectTodoCommentOption,
    #avoidUnnecessaryAsyncFunctionOption:
        _f$avoidUnnecessaryAsyncFunctionOption,
  };

  static RulesOption _instantiate(DecodingData data) {
    return RulesOption(
        linesLongerThanMaximumCharsOption:
            data.dec(_f$linesLongerThanMaximumCharsOption),
        preferNamedParametersOption: data.dec(_f$preferNamedParametersOption),
        preferIsEmptyStringOption: data.dec(_f$preferIsEmptyStringOption),
        preferIsNotEmptyStringOption: data.dec(_f$preferIsNotEmptyStringOption),
        incorrectTodoCommentOption: data.dec(_f$incorrectTodoCommentOption),
        avoidUnnecessaryAsyncFunctionOption:
            data.dec(_f$avoidUnnecessaryAsyncFunctionOption));
  }

  @override
  final Function instantiate = _instantiate;

  static RulesOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<RulesOption>(map));
  }

  static RulesOption fromJson(String json) {
    return _guard((c) => c.fromJson<RulesOption>(json));
  }
}

mixin RulesOptionMappable {
  String toJson() {
    return RulesOptionMapper._guard((c) => c.toJson(this as RulesOption));
  }

  Map<String, dynamic> toMap() {
    return RulesOptionMapper._guard((c) => c.toMap(this as RulesOption));
  }

  RulesOptionCopyWith<RulesOption, RulesOption, RulesOption> get copyWith =>
      _RulesOptionCopyWithImpl(this as RulesOption, $identity, $identity);
  @override
  String toString() {
    return RulesOptionMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            RulesOptionMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return RulesOptionMapper._guard((c) => c.hash(this));
  }
}

extension RulesOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RulesOption, $Out> {
  RulesOptionCopyWith<$R, RulesOption, $Out> get $asRulesOption =>
      $base.as((v, t, t2) => _RulesOptionCopyWithImpl(v, t, t2));
}

abstract class RulesOptionCopyWith<$R, $In extends RulesOption, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  LinesLongerThanMaximumCharsOptionCopyWith<
      $R,
      LinesLongerThanMaximumCharsOption,
      LinesLongerThanMaximumCharsOption> get linesLongerThanMaximumCharsOption;
  PreferNamedParametersOptionCopyWith<$R, PreferNamedParametersOption,
      PreferNamedParametersOption> get preferNamedParametersOption;
  PreferIsEmptyStringOptionCopyWith<$R, PreferIsEmptyStringOption,
      PreferIsEmptyStringOption> get preferIsEmptyStringOption;
  PreferIsNotEmptyStringOptionCopyWith<$R, PreferIsNotEmptyStringOption,
      PreferIsNotEmptyStringOption> get preferIsNotEmptyStringOption;
  IncorrectTodoCommentOptionCopyWith<$R, IncorrectTodoCommentOption,
      IncorrectTodoCommentOption> get incorrectTodoCommentOption;
  AvoidUnnecessaryAsyncFunctionOptionCopyWith<
          $R,
          AvoidUnnecessaryAsyncFunctionOption,
          AvoidUnnecessaryAsyncFunctionOption>
      get avoidUnnecessaryAsyncFunctionOption;
  $R call(
      {LinesLongerThanMaximumCharsOption? linesLongerThanMaximumCharsOption,
      PreferNamedParametersOption? preferNamedParametersOption,
      PreferIsEmptyStringOption? preferIsEmptyStringOption,
      PreferIsNotEmptyStringOption? preferIsNotEmptyStringOption,
      IncorrectTodoCommentOption? incorrectTodoCommentOption,
      AvoidUnnecessaryAsyncFunctionOption?
          avoidUnnecessaryAsyncFunctionOption});
  RulesOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RulesOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RulesOption, $Out>
    implements RulesOptionCopyWith<$R, RulesOption, $Out> {
  _RulesOptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RulesOption> $mapper =
      RulesOptionMapper.ensureInitialized();
  @override
  LinesLongerThanMaximumCharsOptionCopyWith<$R,
          LinesLongerThanMaximumCharsOption, LinesLongerThanMaximumCharsOption>
      get linesLongerThanMaximumCharsOption =>
          $value.linesLongerThanMaximumCharsOption.copyWith
              .$chain((v) => call(linesLongerThanMaximumCharsOption: v));
  @override
  PreferNamedParametersOptionCopyWith<$R, PreferNamedParametersOption,
          PreferNamedParametersOption>
      get preferNamedParametersOption =>
          $value.preferNamedParametersOption.copyWith
              .$chain((v) => call(preferNamedParametersOption: v));
  @override
  PreferIsEmptyStringOptionCopyWith<$R, PreferIsEmptyStringOption,
          PreferIsEmptyStringOption>
      get preferIsEmptyStringOption => $value.preferIsEmptyStringOption.copyWith
          .$chain((v) => call(preferIsEmptyStringOption: v));
  @override
  PreferIsNotEmptyStringOptionCopyWith<$R, PreferIsNotEmptyStringOption,
          PreferIsNotEmptyStringOption>
      get preferIsNotEmptyStringOption =>
          $value.preferIsNotEmptyStringOption.copyWith
              .$chain((v) => call(preferIsNotEmptyStringOption: v));
  @override
  IncorrectTodoCommentOptionCopyWith<$R, IncorrectTodoCommentOption,
          IncorrectTodoCommentOption>
      get incorrectTodoCommentOption =>
          $value.incorrectTodoCommentOption.copyWith
              .$chain((v) => call(incorrectTodoCommentOption: v));
  @override
  AvoidUnnecessaryAsyncFunctionOptionCopyWith<
          $R,
          AvoidUnnecessaryAsyncFunctionOption,
          AvoidUnnecessaryAsyncFunctionOption>
      get avoidUnnecessaryAsyncFunctionOption =>
          $value.avoidUnnecessaryAsyncFunctionOption.copyWith
              .$chain((v) => call(avoidUnnecessaryAsyncFunctionOption: v));
  @override
  $R call(
          {LinesLongerThanMaximumCharsOption? linesLongerThanMaximumCharsOption,
          PreferNamedParametersOption? preferNamedParametersOption,
          PreferIsEmptyStringOption? preferIsEmptyStringOption,
          PreferIsNotEmptyStringOption? preferIsNotEmptyStringOption,
          IncorrectTodoCommentOption? incorrectTodoCommentOption,
          AvoidUnnecessaryAsyncFunctionOption?
              avoidUnnecessaryAsyncFunctionOption}) =>
      $apply(FieldCopyWithData({
        if (linesLongerThanMaximumCharsOption != null)
          #linesLongerThanMaximumCharsOption: linesLongerThanMaximumCharsOption,
        if (preferNamedParametersOption != null)
          #preferNamedParametersOption: preferNamedParametersOption,
        if (preferIsEmptyStringOption != null)
          #preferIsEmptyStringOption: preferIsEmptyStringOption,
        if (preferIsNotEmptyStringOption != null)
          #preferIsNotEmptyStringOption: preferIsNotEmptyStringOption,
        if (incorrectTodoCommentOption != null)
          #incorrectTodoCommentOption: incorrectTodoCommentOption,
        if (avoidUnnecessaryAsyncFunctionOption != null)
          #avoidUnnecessaryAsyncFunctionOption:
              avoidUnnecessaryAsyncFunctionOption
      }));
  @override
  RulesOption $make(CopyWithData data) => RulesOption(
      linesLongerThanMaximumCharsOption: data.get(
          #linesLongerThanMaximumCharsOption,
          or: $value.linesLongerThanMaximumCharsOption),
      preferNamedParametersOption: data.get(#preferNamedParametersOption,
          or: $value.preferNamedParametersOption),
      preferIsEmptyStringOption: data.get(#preferIsEmptyStringOption,
          or: $value.preferIsEmptyStringOption),
      preferIsNotEmptyStringOption: data.get(#preferIsNotEmptyStringOption,
          or: $value.preferIsNotEmptyStringOption),
      incorrectTodoCommentOption: data.get(#incorrectTodoCommentOption,
          or: $value.incorrectTodoCommentOption),
      avoidUnnecessaryAsyncFunctionOption: data.get(
          #avoidUnnecessaryAsyncFunctionOption,
          or: $value.avoidUnnecessaryAsyncFunctionOption));

  @override
  RulesOptionCopyWith<$R2, RulesOption, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RulesOptionCopyWithImpl($value, $cast, t);
}
