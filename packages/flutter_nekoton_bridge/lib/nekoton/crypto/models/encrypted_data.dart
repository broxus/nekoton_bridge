import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/encryption_algorithm.dart';

part 'encrypted_data.freezed.dart';
part 'encrypted_data.g.dart';

@freezed
sealed class EncryptedData with _$EncryptedData {
  const factory EncryptedData({
    required final EncryptionAlgorithm algorithm,
    required final PublicKey sourcePublicKey,
    required final PublicKey recipientPublicKey,
    required final String data,
    required final String nonce,
  }) = _EncryptedData;

  factory EncryptedData.fromJson(Map<String, dynamic> json) =>
      _$EncryptedDataFromJson(json);
}
