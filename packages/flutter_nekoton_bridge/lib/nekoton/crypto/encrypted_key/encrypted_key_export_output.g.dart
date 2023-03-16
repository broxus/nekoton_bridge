// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedKeyExportOutput _$$_EncryptedKeyExportOutputFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptedKeyExportOutput(
      phrase: json['phrase'] as String,
      mnemonicType:
          MnemonicType.fromJson(json['mnemonicType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EncryptedKeyExportOutputToJson(
        _$_EncryptedKeyExportOutput instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'mnemonicType': instance.mnemonicType.toJson(),
    };
