// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyPassword _$EncryptedKeyPasswordFromJson(
  Map<String, dynamic> json,
) => _EncryptedKeyPassword(
  publicKey: PublicKey.fromJson(json['public_key'] as String),
  password: Password.fromJson(json['password'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EncryptedKeyPasswordToJson(
  _EncryptedKeyPassword instance,
) => <String, dynamic>{
  'public_key': instance.publicKey.toJson(),
  'password': instance.password.toJson(),
};
