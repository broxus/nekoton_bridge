// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ByAccountIdImpl _$$ByAccountIdImplFromJson(Map<String, dynamic> json) =>
    _$ByAccountIdImpl(
      DerivedKeyPasswordByAccountId.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ByAccountIdImplToJson(_$ByAccountIdImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ByPublicKeyImpl _$$ByPublicKeyImplFromJson(Map<String, dynamic> json) =>
    _$ByPublicKeyImpl(
      DerivedKeyPasswordByPublicKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ByPublicKeyImplToJson(_$ByPublicKeyImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
