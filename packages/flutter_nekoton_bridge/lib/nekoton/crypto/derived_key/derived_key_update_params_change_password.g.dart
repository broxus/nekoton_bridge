// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyUpdateParamsChangePasswordChangePassword
    _$DerivedKeyUpdateParamsChangePasswordChangePasswordFromJson(
            Map<String, dynamic> json) =>
        _DerivedKeyUpdateParamsChangePasswordChangePassword(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          oldPassword:
              Password.fromJson(json['old_password'] as Map<String, dynamic>),
          newPassword:
              Password.fromJson(json['new_password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DerivedKeyUpdateParamsChangePasswordChangePasswordToJson(
        _DerivedKeyUpdateParamsChangePasswordChangePassword instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'old_password': instance.oldPassword.toJson(),
      'new_password': instance.newPassword.toJson(),
    };
