// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyPasswordByPublicKeyByPublicKey
    _$$_DerivedKeyPasswordByPublicKeyByPublicKeyFromJson(
            Map<String, dynamic> json) =>
        _$_DerivedKeyPasswordByPublicKeyByPublicKey(
          masterKey:
              publicKeyJsonConverter.fromJson(json['master_key'] as String),
          publicKey:
              publicKeyJsonConverter.fromJson(json['public_key'] as String),
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DerivedKeyPasswordByPublicKeyByPublicKeyToJson(
        _$_DerivedKeyPasswordByPublicKeyByPublicKey instance) =>
    <String, dynamic>{
      'master_key': publicKeyJsonConverter.toJson(instance.masterKey),
      'public_key': publicKeyJsonConverter.toJson(instance.publicKey),
      'password': instance.password,
    };
