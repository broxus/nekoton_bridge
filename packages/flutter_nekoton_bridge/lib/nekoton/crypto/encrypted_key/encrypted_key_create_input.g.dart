// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyCreateInput _$$_EncryptedKeyCreateInputFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyCreateInput(
      name: json['name'] as String?,
      phrase: json['phrase'] as String,
      mnemonicType:
          MnemonicType.fromJson(json['mnemonicType'] as Map<String, dynamic>),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EncryptedKeyCreateInputToJson(
        _$_EncryptedKeyCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phrase': instance.phrase,
      'mnemonicType': instance.mnemonicType.toJson(),
      'password': instance.password.toJson(),
    };
