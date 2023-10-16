// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyPasswordByAccountIdByAccountIdImpl
    _$$DerivedKeyPasswordByAccountIdByAccountIdImplFromJson(
            Map<String, dynamic> json) =>
        _$DerivedKeyPasswordByAccountIdByAccountIdImpl(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          accountId: json['account_id'] as int,
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DerivedKeyPasswordByAccountIdByAccountIdImplToJson(
        _$DerivedKeyPasswordByAccountIdByAccountIdImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'account_id': instance.accountId,
      'password': instance.password.toJson(),
    };
