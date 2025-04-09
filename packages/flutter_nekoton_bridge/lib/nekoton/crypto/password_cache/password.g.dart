// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Explicit _$ExplicitFromJson(Map<String, dynamic> json) => _Explicit(
      PasswordExplicit.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExplicitToJson(_Explicit instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_FromCache _$FromCacheFromJson(Map<String, dynamic> json) => _FromCache(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FromCacheToJson(_FromCache instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
