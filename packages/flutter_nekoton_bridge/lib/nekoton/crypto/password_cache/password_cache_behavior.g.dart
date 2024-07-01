// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_cache_behavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      (json['data'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$RemoveImpl _$$RemoveImplFromJson(Map<String, dynamic> json) => _$RemoveImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RemoveImplToJson(_$RemoveImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$NopImpl _$$NopImplFromJson(Map<String, dynamic> json) => _$NopImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NopImplToJson(_$NopImpl instance) => <String, dynamic>{
      'type': instance.$type,
    };
