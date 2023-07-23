// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'prefer_is_empty_string_option.dart';

class PreferIsEmptyStringOptionMapper
    extends ClassMapperBase<PreferIsEmptyStringOption> {
  PreferIsEmptyStringOptionMapper._();

  static PreferIsEmptyStringOptionMapper? _instance;
  static PreferIsEmptyStringOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PreferIsEmptyStringOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'PreferIsEmptyStringOption';

  static List<String> _$exclude(PreferIsEmptyStringOption v) => v.exclude;
  static const Field<PreferIsEmptyStringOption, List<String>> _f$exclude =
      Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(PreferIsEmptyStringOption v) => v.include;
  static const Field<PreferIsEmptyStringOption, List<String>> _f$include =
      Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(PreferIsEmptyStringOption v) => v.severity;
  static const Field<PreferIsEmptyStringOption, ErrorSeverity> _f$severity =
      Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<PreferIsEmptyStringOption, dynamic>> fields = const {
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static PreferIsEmptyStringOption _instantiate(DecodingData data) {
    return PreferIsEmptyStringOption(
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static PreferIsEmptyStringOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<PreferIsEmptyStringOption>(map));
  }

  static PreferIsEmptyStringOption fromJson(String json) {
    return _guard((c) => c.fromJson<PreferIsEmptyStringOption>(json));
  }
}

mixin PreferIsEmptyStringOptionMappable {
  String toJson() {
    return PreferIsEmptyStringOptionMapper._guard(
        (c) => c.toJson(this as PreferIsEmptyStringOption));
  }

  Map<String, dynamic> toMap() {
    return PreferIsEmptyStringOptionMapper._guard(
        (c) => c.toMap(this as PreferIsEmptyStringOption));
  }

  PreferIsEmptyStringOptionCopyWith<PreferIsEmptyStringOption,
          PreferIsEmptyStringOption, PreferIsEmptyStringOption>
      get copyWith => _PreferIsEmptyStringOptionCopyWithImpl(
          this as PreferIsEmptyStringOption, $identity, $identity);
  @override
  String toString() {
    return PreferIsEmptyStringOptionMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PreferIsEmptyStringOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return PreferIsEmptyStringOptionMapper._guard((c) => c.hash(this));
  }
}

extension PreferIsEmptyStringOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PreferIsEmptyStringOption, $Out> {
  PreferIsEmptyStringOptionCopyWith<$R, PreferIsEmptyStringOption, $Out>
      get $asPreferIsEmptyStringOption => $base
          .as((v, t, t2) => _PreferIsEmptyStringOptionCopyWithImpl(v, t, t2));
}

abstract class PreferIsEmptyStringOptionCopyWith<
    $R,
    $In extends PreferIsEmptyStringOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {List<String>? exclude, List<String>? include, ErrorSeverity? severity});
  PreferIsEmptyStringOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PreferIsEmptyStringOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PreferIsEmptyStringOption, $Out>
    implements
        PreferIsEmptyStringOptionCopyWith<$R, PreferIsEmptyStringOption, $Out> {
  _PreferIsEmptyStringOptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PreferIsEmptyStringOption> $mapper =
      PreferIsEmptyStringOptionMapper.ensureInitialized();
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
  PreferIsEmptyStringOption $make(CopyWithData data) =>
      PreferIsEmptyStringOption(
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  PreferIsEmptyStringOptionCopyWith<$R2, PreferIsEmptyStringOption, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PreferIsEmptyStringOptionCopyWithImpl($value, $cast, t);
}
