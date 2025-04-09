// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_get_public_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyGetPublicKeysRename _$EncryptedKeyGetPublicKeysRenameFromJson(
        Map<String, dynamic> json) =>
    _EncryptedKeyGetPublicKeysRename(
      publicKey: PublicKey.fromJson(json['public_key'] as String),
    );

Map<String, dynamic> _$EncryptedKeyGetPublicKeysRenameToJson(
        _EncryptedKeyGetPublicKeysRename instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
    };
