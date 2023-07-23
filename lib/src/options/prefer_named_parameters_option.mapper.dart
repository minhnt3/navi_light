// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'prefer_named_parameters_option.dart';

class PreferNamedParametersOptionMapper
    extends ClassMapperBase<PreferNamedParametersOption> {
  PreferNamedParametersOptionMapper._();

  static PreferNamedParametersOptionMapper? _instance;
  static PreferNamedParametersOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PreferNamedParametersOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'PreferNamedParametersOption';

  static int _$threshold(PreferNamedParametersOption v) => v.threshold;
  static const Field<PreferNamedParametersOption, int> _f$threshold =
      Field('threshold', _$threshold, opt: true, def: 2);
  static List<String> _$exclude(PreferNamedParametersOption v) => v.exclude;
  static const Field<PreferNamedParametersOption, List<String>> _f$exclude =
      Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(PreferNamedParametersOption v) => v.include;
  static const Field<PreferNamedParametersOption, List<String>> _f$include =
      Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(PreferNamedParametersOption v) => v.severity;
  static const Field<PreferNamedParametersOption, ErrorSeverity> _f$severity =
      Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<PreferNamedParametersOption, dynamic>> fields =
      const {
    #threshold: _f$threshold,
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static PreferNamedParametersOption _instantiate(DecodingData data) {
    return PreferNamedParametersOption(
        threshold: data.dec(_f$threshold),
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static PreferNamedParametersOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<PreferNamedParametersOption>(map));
  }

  static PreferNamedParametersOption fromJson(String json) {
    return _guard((c) => c.fromJson<PreferNamedParametersOption>(json));
  }
}

mixin PreferNamedParametersOptionMappable {
  String toJson() {
    return PreferNamedParametersOptionMapper._guard(
        (c) => c.toJson(this as PreferNamedParametersOption));
  }

  Map<String, dynamic> toMap() {
    return PreferNamedParametersOptionMapper._guard(
        (c) => c.toMap(this as PreferNamedParametersOption));
  }

  PreferNamedParametersOptionCopyWith<PreferNamedParametersOption,
          PreferNamedParametersOption, PreferNamedParametersOption>
      get copyWith => _PreferNamedParametersOptionCopyWithImpl(
          this as PreferNamedParametersOption, $identity, $identity);
  @override
  String toString() {
    return PreferNamedParametersOptionMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PreferNamedParametersOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return PreferNamedParametersOptionMapper._guard((c) => c.hash(this));
  }
}

extension PreferNamedParametersOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PreferNamedParametersOption, $Out> {
  PreferNamedParametersOptionCopyWith<$R, PreferNamedParametersOption, $Out>
      get $asPreferNamedParametersOption => $base
          .as((v, t, t2) => _PreferNamedParametersOptionCopyWithImpl(v, t, t2));
}

abstract class PreferNamedParametersOptionCopyWith<
    $R,
    $In extends PreferNamedParametersOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {int? threshold,
      List<String>? exclude,
      List<String>? include,
      ErrorSeverity? severity});
  PreferNamedParametersOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PreferNamedParametersOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PreferNamedParametersOption, $Out>
    implements
        PreferNamedParametersOptionCopyWith<$R, PreferNamedParametersOption,
            $Out> {
  _PreferNamedParametersOptionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PreferNamedParametersOption> $mapper =
      PreferNamedParametersOptionMapper.ensureInitialized();
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
          {int? threshold,
          List<String>? exclude,
          List<String>? include,
          ErrorSeverity? severity}) =>
      $apply(FieldCopyWithData({
        if (threshold != null) #threshold: threshold,
        if (exclude != null) #exclude: exclude,
        if (include != null) #include: include,
        if (severity != null) #severity: severity
      }));
  @override
  PreferNamedParametersOption $make(CopyWithData data) =>
      PreferNamedParametersOption(
          threshold: data.get(#threshold, or: $value.threshold),
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  PreferNamedParametersOptionCopyWith<$R2, PreferNamedParametersOption, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PreferNamedParametersOptionCopyWithImpl($value, $cast, t);
}
