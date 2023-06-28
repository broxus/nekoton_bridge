// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_create_input_import.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyCreateInputImportImport
    _$$_DerivedKeyCreateInputImportImportFromJson(Map<String, dynamic> json) =>
        _$_DerivedKeyCreateInputImportImport(
          keyName: json['key_name'] as String?,
          phrase: json['phrase'] as String,
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DerivedKeyCreateInputImportImportToJson(
        _$_DerivedKeyCreateInputImportImport instance) =>
    <String, dynamic>{
      'key_name': instance.keyName,
      'phrase': instance.phrase,
      'password': instance.password.toJson(),
    };
