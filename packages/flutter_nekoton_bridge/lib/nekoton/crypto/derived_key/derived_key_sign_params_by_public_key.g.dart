// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyPasswordByPublicKeyByPublicKeyImpl
    _$$DerivedKeyPasswordByPublicKeyByPublicKeyImplFromJson(
            Map<String, dynamic> json) =>
        _$DerivedKeyPasswordByPublicKeyByPublicKeyImpl(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DerivedKeyPasswordByPublicKeyByPublicKeyImplToJson(
        _$DerivedKeyPasswordByPublicKeyByPublicKeyImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'public_key': instance.publicKey.toJson(),
      'password': instance.password.toJson(),
    };
