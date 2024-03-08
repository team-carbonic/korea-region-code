// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionCodeQueryParameters _$RegionCodeQueryParametersFromJson(
    Map<String, dynamic> json) {
  return _RegionCodeQueryParameters.fromJson(json);
}

/// @nodoc
mixin _$RegionCodeQueryParameters {
  @JsonKey(name: 'regcode_pattern')
  String get pattern => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_ignore_zero')
  bool get ignoringZero => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCodeQueryParametersCopyWith<RegionCodeQueryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCodeQueryParametersCopyWith<$Res> {
  factory $RegionCodeQueryParametersCopyWith(RegionCodeQueryParameters value,
          $Res Function(RegionCodeQueryParameters) then) =
      _$RegionCodeQueryParametersCopyWithImpl<$Res, RegionCodeQueryParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'regcode_pattern') String pattern,
      @JsonKey(name: 'is_ignore_zero') bool ignoringZero});
}

/// @nodoc
class _$RegionCodeQueryParametersCopyWithImpl<$Res,
        $Val extends RegionCodeQueryParameters>
    implements $RegionCodeQueryParametersCopyWith<$Res> {
  _$RegionCodeQueryParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? ignoringZero = null,
  }) {
    return _then(_value.copyWith(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      ignoringZero: null == ignoringZero
          ? _value.ignoringZero
          : ignoringZero // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionCodeQueryParametersImplCopyWith<$Res>
    implements $RegionCodeQueryParametersCopyWith<$Res> {
  factory _$$RegionCodeQueryParametersImplCopyWith(
          _$RegionCodeQueryParametersImpl value,
          $Res Function(_$RegionCodeQueryParametersImpl) then) =
      __$$RegionCodeQueryParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'regcode_pattern') String pattern,
      @JsonKey(name: 'is_ignore_zero') bool ignoringZero});
}

/// @nodoc
class __$$RegionCodeQueryParametersImplCopyWithImpl<$Res>
    extends _$RegionCodeQueryParametersCopyWithImpl<$Res,
        _$RegionCodeQueryParametersImpl>
    implements _$$RegionCodeQueryParametersImplCopyWith<$Res> {
  __$$RegionCodeQueryParametersImplCopyWithImpl(
      _$RegionCodeQueryParametersImpl _value,
      $Res Function(_$RegionCodeQueryParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? ignoringZero = null,
  }) {
    return _then(_$RegionCodeQueryParametersImpl(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      ignoringZero: null == ignoringZero
          ? _value.ignoringZero
          : ignoringZero // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionCodeQueryParametersImpl implements _RegionCodeQueryParameters {
  _$RegionCodeQueryParametersImpl(
      {@JsonKey(name: 'regcode_pattern') required this.pattern,
      @JsonKey(name: 'is_ignore_zero') this.ignoringZero = false});

  factory _$RegionCodeQueryParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionCodeQueryParametersImplFromJson(json);

  @override
  @JsonKey(name: 'regcode_pattern')
  final String pattern;
  @override
  @JsonKey(name: 'is_ignore_zero')
  final bool ignoringZero;

  @override
  String toString() {
    return 'RegionCodeQueryParameters(pattern: $pattern, ignoringZero: $ignoringZero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionCodeQueryParametersImpl &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.ignoringZero, ignoringZero) ||
                other.ignoringZero == ignoringZero));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pattern, ignoringZero);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionCodeQueryParametersImplCopyWith<_$RegionCodeQueryParametersImpl>
      get copyWith => __$$RegionCodeQueryParametersImplCopyWithImpl<
          _$RegionCodeQueryParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionCodeQueryParametersImplToJson(
      this,
    );
  }
}

abstract class _RegionCodeQueryParameters implements RegionCodeQueryParameters {
  factory _RegionCodeQueryParameters(
          {@JsonKey(name: 'regcode_pattern') required final String pattern,
          @JsonKey(name: 'is_ignore_zero') final bool ignoringZero}) =
      _$RegionCodeQueryParametersImpl;

  factory _RegionCodeQueryParameters.fromJson(Map<String, dynamic> json) =
      _$RegionCodeQueryParametersImpl.fromJson;

  @override
  @JsonKey(name: 'regcode_pattern')
  String get pattern;
  @override
  @JsonKey(name: 'is_ignore_zero')
  bool get ignoringZero;
  @override
  @JsonKey(ignore: true)
  _$$RegionCodeQueryParametersImplCopyWith<_$RegionCodeQueryParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
