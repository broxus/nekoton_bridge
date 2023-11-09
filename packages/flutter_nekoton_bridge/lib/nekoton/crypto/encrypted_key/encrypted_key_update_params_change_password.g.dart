// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedKeyUpdateParamsChangePasswordChangePasswordImpl
    _$$EncryptedKeyUpdateParamsChangePasswordChangePasswordImplFromJson(
            Map<String, dynamic> json) =>
        _$EncryptedKeyUpdateParamsChangePasswordChangePasswordImpl(
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          oldPassword:
              Password.fromJson(json['old_password'] as Map<String, dynamic>),
          newPassword:
              Password.fromJson(json['new_password'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$EncryptedKeyUpdateParamsChangePasswordChangePasswordImplToJson(
        _$EncryptedKeyUpdateParamsChangePasswordChangePasswordImpl instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'old_password': instance.oldPassword.toJson(),
      'new_password': instance.newPassword.toJson(),
    };
