// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'prefer_is_not_empty_string_option.dart';

class PreferIsNotEmptyStringOptionMapper
    extends ClassMapperBase<PreferIsNotEmptyStringOption> {
  PreferIsNotEmptyStringOptionMapper._();

  static PreferIsNotEmptyStringOptionMapper? _instance;
  static PreferIsNotEmptyStringOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PreferIsNotEmptyStringOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'PreferIsNotEmptyStringOption';

  static List<String> _$exclude(PreferIsNotEmptyStringOption v) => v.exclude;
  static const Field<PreferIsNotEmptyStringOption, List<String>> _f$exclude =
      Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(PreferIsNotEmptyStringOption v) => v.include;
  static const Field<PreferIsNotEmptyStringOption, List<String>> _f$include =
      Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(PreferIsNotEmptyStringOption v) => v.severity;
  static const Field<PreferIsNotEmptyStringOption, ErrorSeverity> _f$severity =
      Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<PreferIsNotEmptyStringOption, dynamic>> fields =
      const {
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static PreferIsNotEmptyStringOption _instantiate(DecodingData data) {
    return PreferIsNotEmptyStringOption(
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static PreferIsNotEmptyStringOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<PreferIsNotEmptyStringOption>(map));
  }

  static PreferIsNotEmptyStringOption fromJson(String json) {
    return _guard((c) => c.fromJson<PreferIsNotEmptyStringOption>(json));
  }
}

mixin PreferIsNotEmptyStringOptionMappable {
  String toJson() {
    return PreferIsNotEmptyStringOptionMapper._guard(
        (c) => c.toJson(this as PreferIsNotEmptyStringOption));
  }

  Map<String, dynamic> toMap() {
    return PreferIsNotEmptyStringOptionMapper._guard(
        (c) => c.toMap(this as PreferIsNotEmptyStringOption));
  }

  PreferIsNotEmptyStringOptionCopyWith<PreferIsNotEmptyStringOption,
          PreferIsNotEmptyStringOption, PreferIsNotEmptyStringOption>
      get copyWith => _PreferIsNotEmptyStringOptionCopyWithImpl(
          this as PreferIsNotEmptyStringOption, $identity, $identity);
  @override
  String toString() {
    return PreferIsNotEmptyStringOptionMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PreferIsNotEmptyStringOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return PreferIsNotEmptyStringOptionMapper._guard((c) => c.hash(this));
  }
}

extension PreferIsNotEmptyStringOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PreferIsNotEmptyStringOption, $Out> {
  PreferIsNotEmptyStringOptionCopyWith<$R, PreferIsNotEmptyStringOption, $Out>
      get $asPreferIsNotEmptyStringOption => $base.as(
          (v, t, t2) => _PreferIsNotEmptyStringOptionCopyWithImpl(v, t, t2));
}

abstract class PreferIsNotEmptyStringOptionCopyWith<
    $R,
    $In extends PreferIsNotEmptyStringOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {List<String>? exclude, List<String>? include, ErrorSeverity? severity});
  PreferIsNotEmptyStringOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PreferIsNotEmptyStringOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PreferIsNotEmptyStringOption, $Out>
    implements
        PreferIsNotEmptyStringOptionCopyWith<$R, PreferIsNotEmptyStringOption,
            $Out> {
  _PreferIsNotEmptyStringOptionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PreferIsNotEmptyStringOption> $mapper =
      PreferIsNotEmptyStringOptionMapper.ensureInitialized();
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
  PreferIsNotEmptyStringOption $make(CopyWithData data) =>
      PreferIsNotEmptyStringOption(
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  PreferIsNotEmptyStringOptionCopyWith<$R2, PreferIsNotEmptyStringOption, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PreferIsNotEmptyStringOptionCopyWithImpl($value, $cast, t);
}
