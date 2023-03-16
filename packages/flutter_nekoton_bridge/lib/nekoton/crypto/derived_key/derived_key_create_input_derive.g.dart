// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_create_input_derive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyCreateInputDeriveDerive
    _$$_DerivedKeyCreateInputDeriveDeriveFromJson(Map<String, dynamic> json) =>
        _$_DerivedKeyCreateInputDeriveDerive(
          keyName: json['key_name'] as String?,
          masterKey: json['master_key'] as String,
          accountId: json['account_id'] as int,
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DerivedKeyCreateInputDeriveDeriveToJson(
        _$_DerivedKeyCreateInputDeriveDerive instance) =>
    <String, dynamic>{
      'key_name': instance.keyName,
      'master_key': instance.masterKey,
      'account_id': instance.accountId,
      'password': instance.password.toJson(),
    };
