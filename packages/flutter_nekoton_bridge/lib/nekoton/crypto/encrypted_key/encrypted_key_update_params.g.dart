// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rename _$RenameFromJson(Map<String, dynamic> json) => _Rename(
      EncryptedKeyUpdateParamsRename.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RenameToJson(_Rename instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    _ChangePassword(
      EncryptedKeyUpdateParamsChangePassword.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChangePasswordToJson(_ChangePassword instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
