// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptedData _$$_EncryptedDataFromJson(Map<String, dynamic> json) =>
    _$_EncryptedData(
      algorithm: $enumDecode(_$EncryptionAlgorithmEnumMap, json['algorithm']),
      sourcePublicKey:
          publicKeyJsonConverter.fromJson(json['sourcePublicKey'] as String),
      recipientPublicKey:
          publicKeyJsonConverter.fromJson(json['recipientPublicKey'] as String),
      data: json['data'] as String,
      nonce: json['nonce'] as String,
    );

Map<String, dynamic> _$$_EncryptedDataToJson(_$_EncryptedData instance) =>
    <String, dynamic>{
      'algorithm': _$EncryptionAlgorithmEnumMap[instance.algorithm]!,
      'sourcePublicKey':
          publicKeyJsonConverter.toJson(instance.sourcePublicKey),
      'recipientPublicKey':
          publicKeyJsonConverter.toJson(instance.recipientPublicKey),
      'data': instance.data,
      'nonce': instance.nonce,
    };

const _$EncryptionAlgorithmEnumMap = {
  EncryptionAlgorithm.chaCha20Poly1305: 'ChaCha20Poly1305',
};
