// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedKeyCreateInput _$EncryptedKeyCreateInputFromJson(
        Map<String, dynamic> json) =>
    _EncryptedKeyCreateInput(
      name: json['name'] as String?,
      phrase: json['phrase'] as String,
      mnemonicType: mnemonicJsonConverter
          .fromJson(json['mnemonicType'] as Map<String, dynamic>),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EncryptedKeyCreateInputToJson(
        _EncryptedKeyCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phrase': instance.phrase,
      'mnemonicType': mnemonicJsonConverter.toJson(instance.mnemonicType),
      'password': instance.password.toJson(),
    };
