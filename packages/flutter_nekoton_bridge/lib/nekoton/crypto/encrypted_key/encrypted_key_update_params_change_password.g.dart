// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyUpdateParamsChangePasswordChangePassword
    _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordFromJson(
            Map<String, dynamic> json) =>
        _$_EncryptedKeyUpdateParamsChangePasswordChangePassword(
          publicKey: json['public_key'] as String,
          oldPassword:
              Password.fromJson(json['old_password'] as Map<String, dynamic>),
          newPassword:
              Password.fromJson(json['new_password'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordToJson(
            _$_EncryptedKeyUpdateParamsChangePasswordChangePassword instance) =>
        <String, dynamic>{
          'public_key': instance.publicKey,
          'old_password': instance.oldPassword.toJson(),
          'new_password': instance.newPassword.toJson(),
        };
