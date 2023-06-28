// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyPasswordByAccountIdByAccountId
    _$$_DerivedKeyPasswordByAccountIdByAccountIdFromJson(
            Map<String, dynamic> json) =>
        _$_DerivedKeyPasswordByAccountIdByAccountId(
          masterKey:
              publicKeyJsonConverter.fromJson(json['master_key'] as String),
          accountId: json['account_id'] as int,
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DerivedKeyPasswordByAccountIdByAccountIdToJson(
        _$_DerivedKeyPasswordByAccountIdByAccountId instance) =>
    <String, dynamic>{
      'master_key': publicKeyJsonConverter.toJson(instance.masterKey),
      'account_id': instance.accountId,
      'password': instance.password.toJson(),
    };
