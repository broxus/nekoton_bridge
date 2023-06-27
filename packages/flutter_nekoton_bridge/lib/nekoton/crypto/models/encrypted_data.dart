import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/encryption_algorithm.dart';

part 'encrypted_data.freezed.dart';
part 'encrypted_data.g.dart';

@freezed
class EncryptedData with _$EncryptedData {
  const factory EncryptedData({
    required EncryptionAlgorithm algorithm,
    @publicKeyJsonConverter required PublicKey sourcePublicKey,
    @publicKeyJsonConverter required PublicKey recipientPublicKey,
    required String data,
    required String nonce,
  }) = _EncryptedData;

  factory EncryptedData.fromJson(Map<String, dynamic> json) =>
      _$EncryptedDataFromJson(json);
}
