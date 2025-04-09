// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyUpdateParamsRenameRename
    _$EncryptedKeyUpdateParamsRenameRenameFromJson(Map<String, dynamic> json) =>
        _EncryptedKeyUpdateParamsRenameRename(
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$EncryptedKeyUpdateParamsRenameRenameToJson(
        _EncryptedKeyUpdateParamsRenameRename instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
