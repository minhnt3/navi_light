// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'avoid_unnecessary_async_function_option.dart';

class AvoidUnnecessaryAsyncFunctionOptionMapper
    extends ClassMapperBase<AvoidUnnecessaryAsyncFunctionOption> {
  AvoidUnnecessaryAsyncFunctionOptionMapper._();

  static AvoidUnnecessaryAsyncFunctionOptionMapper? _instance;
  static AvoidUnnecessaryAsyncFunctionOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = AvoidUnnecessaryAsyncFunctionOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AvoidUnnecessaryAsyncFunctionOption';

  static List<String> _$exclude(AvoidUnnecessaryAsyncFunctionOption v) =>
      v.exclude;
  static const Field<AvoidUnnecessaryAsyncFunctionOption, List<String>>
      _f$exclude = Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(AvoidUnnecessaryAsyncFunctionOption v) =>
      v.include;
  static const Field<AvoidUnnecessaryAsyncFunctionOption, List<String>>
      _f$include = Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(AvoidUnnecessaryAsyncFunctionOption v) =>
      v.severity;
  static const Field<AvoidUnnecessaryAsyncFunctionOption, ErrorSeverity>
      _f$severity = Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<AvoidUnnecessaryAsyncFunctionOption, dynamic>>
      fields = const {
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static AvoidUnnecessaryAsyncFunctionOption _instantiate(DecodingData data) {
    return AvoidUnnecessaryAsyncFunctionOption(
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static AvoidUnnecessaryAsyncFunctionOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AvoidUnnecessaryAsyncFunctionOption>(map));
  }

  static AvoidUnnecessaryAsyncFunctionOption fromJson(String json) {
    return _guard((c) => c.fromJson<AvoidUnnecessaryAsyncFunctionOption>(json));
  }
}

mixin AvoidUnnecessaryAsyncFunctionOptionMappable {
  String toJson() {
    return AvoidUnnecessaryAsyncFunctionOptionMapper._guard(
        (c) => c.toJson(this as AvoidUnnecessaryAsyncFunctionOption));
  }

  Map<String, dynamic> toMap() {
    return AvoidUnnecessaryAsyncFunctionOptionMapper._guard(
        (c) => c.toMap(this as AvoidUnnecessaryAsyncFunctionOption));
  }

  AvoidUnnecessaryAsyncFunctionOptionCopyWith<
          AvoidUnnecessaryAsyncFunctionOption,
          AvoidUnnecessaryAsyncFunctionOption,
          AvoidUnnecessaryAsyncFunctionOption>
      get copyWith => _AvoidUnnecessaryAsyncFunctionOptionCopyWithImpl(
          this as AvoidUnnecessaryAsyncFunctionOption, $identity, $identity);
  @override
  String toString() {
    return AvoidUnnecessaryAsyncFunctionOptionMapper._guard(
        (c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AvoidUnnecessaryAsyncFunctionOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AvoidUnnecessaryAsyncFunctionOptionMapper._guard(
        (c) => c.hash(this));
  }
}

extension AvoidUnnecessaryAsyncFunctionOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AvoidUnnecessaryAsyncFunctionOption, $Out> {
  AvoidUnnecessaryAsyncFunctionOptionCopyWith<$R,
          AvoidUnnecessaryAsyncFunctionOption, $Out>
      get $asAvoidUnnecessaryAsyncFunctionOption => $base.as((v, t, t2) =>
          _AvoidUnnecessaryAsyncFunctionOptionCopyWithImpl(v, t, t2));
}

abstract class AvoidUnnecessaryAsyncFunctionOptionCopyWith<
    $R,
    $In extends AvoidUnnecessaryAsyncFunctionOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {List<String>? exclude, List<String>? include, ErrorSeverity? severity});
  AvoidUnnecessaryAsyncFunctionOptionCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AvoidUnnecessaryAsyncFunctionOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AvoidUnnecessaryAsyncFunctionOption, $Out>
    implements
        AvoidUnnecessaryAsyncFunctionOptionCopyWith<$R,
            AvoidUnnecessaryAsyncFunctionOption, $Out> {
  _AvoidUnnecessaryAsyncFunctionOptionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AvoidUnnecessaryAsyncFunctionOption> $mapper =
      AvoidUnnecessaryAsyncFunctionOptionMapper.ensureInitialized();
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
  AvoidUnnecessaryAsyncFunctionOption $make(CopyWithData data) =>
      AvoidUnnecessaryAsyncFunctionOption(
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  AvoidUnnecessaryAsyncFunctionOptionCopyWith<$R2,
      AvoidUnnecessaryAsyncFunctionOption, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AvoidUnnecessaryAsyncFunctionOptionCopyWithImpl($value, $cast, t);
}
