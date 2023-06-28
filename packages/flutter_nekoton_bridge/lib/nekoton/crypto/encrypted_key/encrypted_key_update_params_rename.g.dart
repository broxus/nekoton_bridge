// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyUpdateParamsRenameRename
    _$$_EncryptedKeyUpdateParamsRenameRenameFromJson(
            Map<String, dynamic> json) =>
        _$_EncryptedKeyUpdateParamsRenameRename(
          publicKey:
              publicKeyJsonConverter.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$_EncryptedKeyUpdateParamsRenameRenameToJson(
        _$_EncryptedKeyUpdateParamsRenameRename instance) =>
    <String, dynamic>{
      'public_key': publicKeyJsonConverter.toJson(instance.publicKey),
      'name': instance.name,
    };
