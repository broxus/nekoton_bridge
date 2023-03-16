// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeySignParamsByAccountIdByAccountId
    _$$_DerivedKeySignParamsByAccountIdByAccountIdFromJson(
            Map<String, dynamic> json) =>
        _$_DerivedKeySignParamsByAccountIdByAccountId(
          masterKey: json['master_key'] as String,
          accountId: json['account_id'] as int,
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DerivedKeySignParamsByAccountIdByAccountIdToJson(
        _$_DerivedKeySignParamsByAccountIdByAccountId instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey,
      'account_id': instance.accountId,
      'password': instance.password.toJson(),
    };
