// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_create_input_import.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyCreateInputImportImport _$DerivedKeyCreateInputImportImportFromJson(
        Map<String, dynamic> json) =>
    _DerivedKeyCreateInputImportImport(
      keyName: json['key_name'] as String?,
      phrase: json['phrase'] as String,
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DerivedKeyCreateInputImportImportToJson(
        _DerivedKeyCreateInputImportImport instance) =>
    <String, dynamic>{
      'key_name': instance.keyName,
      'phrase': instance.phrase,
      'password': instance.password.toJson(),
    };
