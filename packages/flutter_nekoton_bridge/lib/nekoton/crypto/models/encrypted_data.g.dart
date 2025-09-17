// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedData _$EncryptedDataFromJson(Map<String, dynamic> json) =>
    _EncryptedData(
      algorithm: $enumDecode(_$EncryptionAlgorithmEnumMap, json['algorithm']),
      sourcePublicKey: PublicKey.fromJson(json['sourcePublicKey'] as String),
      recipientPublicKey: PublicKey.fromJson(
        json['recipientPublicKey'] as String,
      ),
      data: json['data'] as String,
      nonce: json['nonce'] as String,
    );

Map<String, dynamic> _$EncryptedDataToJson(_EncryptedData instance) =>
    <String, dynamic>{
      'algorithm': _$EncryptionAlgorithmEnumMap[instance.algorithm]!,
      'sourcePublicKey': instance.sourcePublicKey.toJson(),
      'recipientPublicKey': instance.recipientPublicKey.toJson(),
      'data': instance.data,
      'nonce': instance.nonce,
    };

const _$EncryptionAlgorithmEnumMap = {
  EncryptionAlgorithm.chaCha20Poly1305: 'ChaCha20Poly1305',
};
