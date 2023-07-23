// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'incorrect_todo_comment_option.dart';

class IncorrectTodoCommentOptionMapper
    extends ClassMapperBase<IncorrectTodoCommentOption> {
  IncorrectTodoCommentOptionMapper._();

  static IncorrectTodoCommentOptionMapper? _instance;
  static IncorrectTodoCommentOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = IncorrectTodoCommentOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'IncorrectTodoCommentOption';

  static List<String> _$exclude(IncorrectTodoCommentOption v) => v.exclude;
  static const Field<IncorrectTodoCommentOption, List<String>> _f$exclude =
      Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(IncorrectTodoCommentOption v) => v.include;
  static const Field<IncorrectTodoCommentOption, List<String>> _f$include =
      Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(IncorrectTodoCommentOption v) => v.severity;
  static const Field<IncorrectTodoCommentOption, ErrorSeverity> _f$severity =
      Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<IncorrectTodoCommentOption, dynamic>> fields = const {
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static IncorrectTodoCommentOption _instantiate(DecodingData data) {
    return IncorrectTodoCommentOption(
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static IncorrectTodoCommentOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<IncorrectTodoCommentOption>(map));
  }

  static IncorrectTodoCommentOption fromJson(String json) {
    return _guard((c) => c.fromJson<IncorrectTodoCommentOption>(json));
  }
}

mixin IncorrectTodoCommentOptionMappable {
  String toJson() {
    return IncorrectTodoCommentOptionMapper._guard(
        (c) => c.toJson(this as IncorrectTodoCommentOption));
  }

  Map<String, dynamic> toMap() {
    return IncorrectTodoCommentOptionMapper._guard(
        (c) => c.toMap(this as IncorrectTodoCommentOption));
  }

  IncorrectTodoCommentOptionCopyWith<IncorrectTodoCommentOption,
          IncorrectTodoCommentOption, IncorrectTodoCommentOption>
      get copyWith => _IncorrectTodoCommentOptionCopyWithImpl(
          this as IncorrectTodoCommentOption, $identity, $identity);
  @override
  String toString() {
    return IncorrectTodoCommentOptionMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IncorrectTodoCommentOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return IncorrectTodoCommentOptionMapper._guard((c) => c.hash(this));
  }
}

extension IncorrectTodoCommentOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IncorrectTodoCommentOption, $Out> {
  IncorrectTodoCommentOptionCopyWith<$R, IncorrectTodoCommentOption, $Out>
      get $asIncorrectTodoCommentOption => $base
          .as((v, t, t2) => _IncorrectTodoCommentOptionCopyWithImpl(v, t, t2));
}

abstract class IncorrectTodoCommentOptionCopyWith<
    $R,
    $In extends IncorrectTodoCommentOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {List<String>? exclude, List<String>? include, ErrorSeverity? severity});
  IncorrectTodoCommentOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IncorrectTodoCommentOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IncorrectTodoCommentOption, $Out>
    implements
        IncorrectTodoCommentOptionCopyWith<$R, IncorrectTodoCommentOption,
            $Out> {
  _IncorrectTodoCommentOptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IncorrectTodoCommentOption> $mapper =
      IncorrectTodoCommentOptionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude =>
      ListCopyWith($value.exclude, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(exclude: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include =>
      ListCopyWith($value.include, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(include: v));
  @override
  $R call(
          {List<String>? exclude,
          List<String>? include,
          ErrorSeverity? severity}) =>
      $apply(FieldCopyWithData({
        if (exclude != null) #exclude: exclude,
        if (include != null) #include: include,
        if (severity != null) #severity: severity
      }));
  @override
  IncorrectTodoCommentOption $make(CopyWithData data) =>
      IncorrectTodoCommentOption(
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  IncorrectTodoCommentOptionCopyWith<$R2, IncorrectTodoCommentOption, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _IncorrectTodoCommentOptionCopyWithImpl($value, $cast, t);
}
