// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_create_input_derive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyCreateInputDerive _$DerivedKeyCreateInputDeriveFromJson(
        Map<String, dynamic> json) =>
    _DerivedKeyCreateInputDerive(
      keyName: json['key_name'] as String?,
      masterKey: PublicKey.fromJson(json['master_key'] as String),
      accountId: (json['account_id'] as num).toInt(),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DerivedKeyCreateInputDeriveToJson(
        _DerivedKeyCreateInputDerive instance) =>
    <String, dynamic>{
      'key_name': instance.keyName,
      'master_key': instance.masterKey.toJson(),
      'account_id': instance.accountId,
      'password': instance.password.toJson(),
    };
