// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyCreateInput _$$_EncryptedKeyCreateInputFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyCreateInput(
      json['name'] as String?,
      json['phrase'] as String,
      mnemonicJsonConverter
          .fromJson(json['mnemonicType'] as Map<String, dynamic>),
      Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EncryptedKeyCreateInputToJson(
        _$_EncryptedKeyCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phrase': instance.phrase,
      'mnemonicType': mnemonicJsonConverter.toJson(instance.mnemonicType),
      'password': instance.password,
    };
