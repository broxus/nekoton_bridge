// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExplicitImpl _$$ExplicitImplFromJson(Map<String, dynamic> json) =>
    _$ExplicitImpl(
      PasswordExplicit.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExplicitImplToJson(_$ExplicitImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$FromCacheImpl _$$FromCacheImplFromJson(Map<String, dynamic> json) =>
    _$FromCacheImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FromCacheImplToJson(_$FromCacheImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
