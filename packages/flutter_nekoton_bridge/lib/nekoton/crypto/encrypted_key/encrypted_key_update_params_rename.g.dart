// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyUpdateParamsRename _$EncryptedKeyUpdateParamsRenameFromJson(
        Map<String, dynamic> json) =>
    _EncryptedKeyUpdateParamsRename(
      publicKey: PublicKey.fromJson(json['public_key'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$EncryptedKeyUpdateParamsRenameToJson(
        _EncryptedKeyUpdateParamsRename instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
