// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyExportSeedOutput _$$_EncryptedKeyExportSeedOutputFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyExportSeedOutput(
      phrase: json['phrase'] as String,
      mnemonicType: mnemonicJsonConverter
          .fromJson(json['mnemonicType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EncryptedKeyExportSeedOutputToJson(
        _$_EncryptedKeyExportSeedOutput instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'mnemonicType': mnemonicJsonConverter.toJson(instance.mnemonicType),
    };
