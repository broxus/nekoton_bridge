// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyUpdateParamsChangePasswordChangePassword
    _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordFromJson(
            Map<String, dynamic> json) =>
        _$_DerivedKeyUpdateParamsChangePasswordChangePassword(
          masterKey: json['master_key'] as String,
          oldPassword:
              Password.fromJson(json['old_password'] as Map<String, dynamic>),
          newPassword:
              Password.fromJson(json['new_password'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordToJson(
            _$_DerivedKeyUpdateParamsChangePasswordChangePassword instance) =>
        <String, dynamic>{
          'master_key': instance.masterKey,
          'old_password': instance.oldPassword.toJson(),
          'new_password': instance.newPassword.toJson(),
        };
