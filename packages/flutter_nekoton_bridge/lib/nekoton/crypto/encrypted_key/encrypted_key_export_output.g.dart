// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyExportOutput _$$_EncryptedKeyExportOutputFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyExportOutput(
      phrase: json['phrase'] as String,
      mnemonicType: _$JsonConverterFromJson<Map<String, dynamic>, dynamic>(
          json['mnemonicType'], mnemonicJsonConverter.fromJson),
    );

Map<String, dynamic> _$$_EncryptedKeyExportOutputToJson(
        _$_EncryptedKeyExportOutput instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'mnemonicType': mnemonicJsonConverter.toJson(instance.mnemonicType),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
