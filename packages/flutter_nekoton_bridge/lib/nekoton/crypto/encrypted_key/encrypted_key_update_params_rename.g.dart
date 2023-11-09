// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedKeyUpdateParamsRenameRenameImpl
    _$$EncryptedKeyUpdateParamsRenameRenameImplFromJson(
            Map<String, dynamic> json) =>
        _$EncryptedKeyUpdateParamsRenameRenameImpl(
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$EncryptedKeyUpdateParamsRenameRenameImplToJson(
        _$EncryptedKeyUpdateParamsRenameRenameImpl instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
