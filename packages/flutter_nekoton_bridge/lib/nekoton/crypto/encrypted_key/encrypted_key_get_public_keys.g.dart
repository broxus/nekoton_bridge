// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_get_public_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyGetPublicKeys _$EncryptedKeyGetPublicKeysFromJson(
        Map<String, dynamic> json) =>
    _EncryptedKeyGetPublicKeys(
      publicKey: PublicKey.fromJson(json['public_key'] as String),
    );

Map<String, dynamic> _$EncryptedKeyGetPublicKeysToJson(
        _EncryptedKeyGetPublicKeys instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
    };
