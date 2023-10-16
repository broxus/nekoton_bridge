// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyUpdateParamsChangePasswordChangePasswordImpl
    _$$DerivedKeyUpdateParamsChangePasswordChangePasswordImplFromJson(
            Map<String, dynamic> json) =>
        _$DerivedKeyUpdateParamsChangePasswordChangePasswordImpl(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          oldPassword:
              Password.fromJson(json['old_password'] as Map<String, dynamic>),
          newPassword:
              Password.fromJson(json['new_password'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$DerivedKeyUpdateParamsChangePasswordChangePasswordImplToJson(
        _$DerivedKeyUpdateParamsChangePasswordChangePasswordImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'old_password': instance.oldPassword.toJson(),
      'new_password': instance.newPassword.toJson(),
    };
