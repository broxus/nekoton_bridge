// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ByAccountId _$$_ByAccountIdFromJson(Map<String, dynamic> json) =>
    _$_ByAccountId(
      DerivedKeySignParamsByAccountId.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ByAccountIdToJson(_$_ByAccountId instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_ByPublicKey _$$_ByPublicKeyFromJson(Map<String, dynamic> json) =>
    _$_ByPublicKey(
      DerivedKeySignParamsByPublicKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ByPublicKeyToJson(_$_ByPublicKey instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
