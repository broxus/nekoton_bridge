// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedKeyPasswordImpl _$$EncryptedKeyPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptedKeyPasswordImpl(
      publicKey: PublicKey.fromJson(json['public_key'] as String),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EncryptedKeyPasswordImplToJson(
        _$EncryptedKeyPasswordImpl instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'password': instance.password.toJson(),
    };
