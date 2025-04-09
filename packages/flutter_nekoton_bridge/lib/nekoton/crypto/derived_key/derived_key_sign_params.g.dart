// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ByAccountId _$ByAccountIdFromJson(Map<String, dynamic> json) => _ByAccountId(
      DerivedKeyPasswordByAccountId.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ByAccountIdToJson(_ByAccountId instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_ByPublicKey _$ByPublicKeyFromJson(Map<String, dynamic> json) => _ByPublicKey(
      DerivedKeyPasswordByPublicKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ByPublicKeyToJson(_ByPublicKey instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
