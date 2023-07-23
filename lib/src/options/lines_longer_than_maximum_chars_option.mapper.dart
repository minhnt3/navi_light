// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'lines_longer_than_maximum_chars_option.dart';

class LinesLongerThanMaximumCharsOptionMapper
    extends ClassMapperBase<LinesLongerThanMaximumCharsOption> {
  LinesLongerThanMaximumCharsOptionMapper._();

  static LinesLongerThanMaximumCharsOptionMapper? _instance;
  static LinesLongerThanMaximumCharsOptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = LinesLongerThanMaximumCharsOptionMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'LinesLongerThanMaximumCharsOption';

  static int _$maximumChars(LinesLongerThanMaximumCharsOption v) =>
      v.maximumChars;
  static const Field<LinesLongerThanMaximumCharsOption, int> _f$maximumChars =
      Field('maximumChars', _$maximumChars,
          key: 'maximum_chars', opt: true, def: 100);
  static List<String> _$exclude(LinesLongerThanMaximumCharsOption v) =>
      v.exclude;
  static const Field<LinesLongerThanMaximumCharsOption, List<String>>
      _f$exclude = Field('exclude', _$exclude, opt: true, def: const []);
  static List<String> _$include(LinesLongerThanMaximumCharsOption v) =>
      v.include;
  static const Field<LinesLongerThanMaximumCharsOption, List<String>>
      _f$include = Field('include', _$include, opt: true, def: const []);
  static ErrorSeverity _$severity(LinesLongerThanMaximumCharsOption v) =>
      v.severity;
  static const Field<LinesLongerThanMaximumCharsOption, ErrorSeverity>
      _f$severity = Field('severity', _$severity,
          opt: true, def: ErrorSeverity.INFO, hook: ErrorSeverityHook());

  @override
  final Map<Symbol, Field<LinesLongerThanMaximumCharsOption, dynamic>> fields =
      const {
    #maximumChars: _f$maximumChars,
    #exclude: _f$exclude,
    #include: _f$include,
    #severity: _f$severity,
  };

  static LinesLongerThanMaximumCharsOption _instantiate(DecodingData data) {
    return LinesLongerThanMaximumCharsOption(
        maximumChars: data.dec(_f$maximumChars),
        exclude: data.dec(_f$exclude),
        include: data.dec(_f$include),
        severity: data.dec(_f$severity));
  }

  @override
  final Function instantiate = _instantiate;

  static LinesLongerThanMaximumCharsOption fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<LinesLongerThanMaximumCharsOption>(map));
  }

  static LinesLongerThanMaximumCharsOption fromJson(String json) {
    return _guard((c) => c.fromJson<LinesLongerThanMaximumCharsOption>(json));
  }
}

mixin LinesLongerThanMaximumCharsOptionMappable {
  String toJson() {
    return LinesLongerThanMaximumCharsOptionMapper._guard(
        (c) => c.toJson(this as LinesLongerThanMaximumCharsOption));
  }

  Map<String, dynamic> toMap() {
    return LinesLongerThanMaximumCharsOptionMapper._guard(
        (c) => c.toMap(this as LinesLongerThanMaximumCharsOption));
  }

  LinesLongerThanMaximumCharsOptionCopyWith<LinesLongerThanMaximumCharsOption,
          LinesLongerThanMaximumCharsOption, LinesLongerThanMaximumCharsOption>
      get copyWith => _LinesLongerThanMaximumCharsOptionCopyWithImpl(
          this as LinesLongerThanMaximumCharsOption, $identity, $identity);
  @override
  String toString() {
    return LinesLongerThanMaximumCharsOptionMapper._guard(
        (c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LinesLongerThanMaximumCharsOptionMapper._guard(
                (c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return LinesLongerThanMaximumCharsOptionMapper._guard((c) => c.hash(this));
  }
}

extension LinesLongerThanMaximumCharsOptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LinesLongerThanMaximumCharsOption, $Out> {
  LinesLongerThanMaximumCharsOptionCopyWith<$R,
          LinesLongerThanMaximumCharsOption, $Out>
      get $asLinesLongerThanMaximumCharsOption => $base.as((v, t, t2) =>
          _LinesLongerThanMaximumCharsOptionCopyWithImpl(v, t, t2));
}

abstract class LinesLongerThanMaximumCharsOptionCopyWith<
    $R,
    $In extends LinesLongerThanMaximumCharsOption,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exclude;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get include;
  $R call(
      {int? maximumChars,
      List<String>? exclude,
      List<String>? include,
      ErrorSeverity? severity});
  LinesLongerThanMaximumCharsOptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LinesLongerThanMaximumCharsOptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LinesLongerThanMaximumCharsOption, $Out>
    implements
        LinesLongerThanMaximumCharsOptionCopyWith<$R,
            LinesLongerThanMaximumCharsOption, $Out> {
  _LinesLongerThanMaximumCharsOptionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LinesLongerThanMaximumCharsOption> $mapper =
      LinesLongerThanMaximumCharsOptionMapper.ensureInitialized();
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
          {int? maximumChars,
          List<String>? exclude,
          List<String>? include,
          ErrorSeverity? severity}) =>
      $apply(FieldCopyWithData({
        if (maximumChars != null) #maximumChars: maximumChars,
        if (exclude != null) #exclude: exclude,
        if (include != null) #include: include,
        if (severity != null) #severity: severity
      }));
  @override
  LinesLongerThanMaximumCharsOption $make(CopyWithData data) =>
      LinesLongerThanMaximumCharsOption(
          maximumChars: data.get(#maximumChars, or: $value.maximumChars),
          exclude: data.get(#exclude, or: $value.exclude),
          include: data.get(#include, or: $value.include),
          severity: data.get(#severity, or: $value.severity));

  @override
  LinesLongerThanMaximumCharsOptionCopyWith<$R2,
      LinesLongerThanMaximumCharsOption, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LinesLongerThanMaximumCharsOptionCopyWithImpl($value, $cast, t);
}
