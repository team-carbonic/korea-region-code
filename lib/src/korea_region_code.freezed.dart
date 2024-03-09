// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'korea_region_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KoreaRegionCode _$KoreaRegionCodeFromJson(Map<String, dynamic> json) {
  return _KoreaRegionCode.fromJson(json);
}

/// @nodoc
mixin _$KoreaRegionCode {
  String get code => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KoreaRegionCodeCopyWith<KoreaRegionCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KoreaRegionCodeCopyWith<$Res> {
  factory $KoreaRegionCodeCopyWith(
          KoreaRegionCode value, $Res Function(KoreaRegionCode) then) =
      _$KoreaRegionCodeCopyWithImpl<$Res, KoreaRegionCode>;
  @useResult
  $Res call({String code, String fullName});
}

/// @nodoc
class _$KoreaRegionCodeCopyWithImpl<$Res, $Val extends KoreaRegionCode>
    implements $KoreaRegionCodeCopyWith<$Res> {
  _$KoreaRegionCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KoreaRegionCodeImplCopyWith<$Res>
    implements $KoreaRegionCodeCopyWith<$Res> {
  factory _$$KoreaRegionCodeImplCopyWith(_$KoreaRegionCodeImpl value,
          $Res Function(_$KoreaRegionCodeImpl) then) =
      __$$KoreaRegionCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String fullName});
}

/// @nodoc
class __$$KoreaRegionCodeImplCopyWithImpl<$Res>
    extends _$KoreaRegionCodeCopyWithImpl<$Res, _$KoreaRegionCodeImpl>
    implements _$$KoreaRegionCodeImplCopyWith<$Res> {
  __$$KoreaRegionCodeImplCopyWithImpl(
      _$KoreaRegionCodeImpl _value, $Res Function(_$KoreaRegionCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? fullName = null,
  }) {
    return _then(_$KoreaRegionCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KoreaRegionCodeImpl extends _KoreaRegionCode {
  _$KoreaRegionCodeImpl({required this.code, required this.fullName})
      : super._();

  factory _$KoreaRegionCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$KoreaRegionCodeImplFromJson(json);

  @override
  final String code;
  @override
  final String fullName;

  @override
  String toString() {
    return 'KoreaRegionCode(code: $code, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KoreaRegionCodeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KoreaRegionCodeImplCopyWith<_$KoreaRegionCodeImpl> get copyWith =>
      __$$KoreaRegionCodeImplCopyWithImpl<_$KoreaRegionCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KoreaRegionCodeImplToJson(
      this,
    );
  }
}

abstract class _KoreaRegionCode extends KoreaRegionCode {
  factory _KoreaRegionCode(
      {required final String code,
      required final String fullName}) = _$KoreaRegionCodeImpl;
  _KoreaRegionCode._() : super._();

  factory _KoreaRegionCode.fromJson(Map<String, dynamic> json) =
      _$KoreaRegionCodeImpl.fromJson;

  @override
  String get code;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$KoreaRegionCodeImplCopyWith<_$KoreaRegionCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
