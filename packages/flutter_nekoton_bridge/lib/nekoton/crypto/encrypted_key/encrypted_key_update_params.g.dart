// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyUpdateParamsRename _$EncryptedKeyUpdateParamsRenameFromJson(
  Map<String, dynamic> json,
) => _EncryptedKeyUpdateParamsRename(
  EncryptedKeyUpdateParamsRename.fromJson(json['data'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$EncryptedKeyUpdateParamsRenameToJson(
  _EncryptedKeyUpdateParamsRename instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

_EncryptedKeyUpdateParamsChangePassword
_$EncryptedKeyUpdateParamsChangePasswordFromJson(Map<String, dynamic> json) =>
    _EncryptedKeyUpdateParamsChangePassword(
      EncryptedKeyUpdateParamsChangePassword.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$EncryptedKeyUpdateParamsChangePasswordToJson(
  _EncryptedKeyUpdateParamsChangePassword instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};
