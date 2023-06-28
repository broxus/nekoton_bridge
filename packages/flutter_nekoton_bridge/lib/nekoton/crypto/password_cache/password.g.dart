// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Explicit _$$_ExplicitFromJson(Map<String, dynamic> json) => _$_Explicit(
      PasswordExplicit.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ExplicitToJson(_$_Explicit instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_FromCache _$$_FromCacheFromJson(Map<String, dynamic> json) => _$_FromCache(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_FromCacheToJson(_$_FromCache instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
