// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyPassword _$$_EncryptedKeyPasswordFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyPassword(
      publicKey: publicKeyJsonConverter.fromJson(json['public_key'] as String),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EncryptedKeyPasswordToJson(
        _$_EncryptedKeyPassword instance) =>
    <String, dynamic>{
      'public_key': publicKeyJsonConverter.toJson(instance.publicKey),
      'password': instance.password.toJson(),
    };
