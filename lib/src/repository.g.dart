// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionCodeQueryParametersImpl _$$RegionCodeQueryParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionCodeQueryParametersImpl(
      pattern: json['regcode_pattern'] as String,
      ignoringZero: json['is_ignore_zero'] as bool? ?? false,
    );

Map<String, dynamic> _$$RegionCodeQueryParametersImplToJson(
        _$RegionCodeQueryParametersImpl instance) =>
    <String, dynamic>{
      'regcode_pattern': instance.pattern,
      'is_ignore_zero': instance.ignoringZero,
    };
