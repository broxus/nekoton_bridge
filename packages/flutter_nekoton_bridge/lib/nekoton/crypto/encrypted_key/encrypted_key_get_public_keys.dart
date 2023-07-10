import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/get_public_keys.dart';

part 'encrypted_key_get_public_keys.freezed.dart';
part 'encrypted_key_get_public_keys.g.dart';

@freezed
sealed class EncryptedKeyGetPublicKeys
    with _$EncryptedKeyGetPublicKeys
    implements GetPublicKeys {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EncryptedKeyGetPublicKeys({
    required final PublicKey publicKey,
  }) = _EncryptedKeyGetPublicKeysRename;

  factory EncryptedKeyGetPublicKeys.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyGetPublicKeysFromJson(json);
}
