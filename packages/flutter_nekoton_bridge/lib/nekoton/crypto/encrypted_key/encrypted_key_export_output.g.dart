// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedKeyExportSeedOutputImpl _$$EncryptedKeyExportSeedOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptedKeyExportSeedOutputImpl(
      phrase: json['phrase'] as String,
      mnemonicType: mnemonicJsonConverter
          .fromJson(json['mnemonicType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EncryptedKeyExportSeedOutputImplToJson(
        _$EncryptedKeyExportSeedOutputImpl instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'mnemonicType': mnemonicJsonConverter.toJson(instance.mnemonicType),
    };
