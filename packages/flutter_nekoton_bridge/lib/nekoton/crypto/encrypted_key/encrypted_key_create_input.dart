import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_key_create_input.freezed.dart';
part 'encrypted_key_create_input.g.dart';

/// Input for creating legacy key
@freezed
sealed class EncryptedKeyCreateInput
    with _$EncryptedKeyCreateInput
    implements CreateKeyInput {
  factory EncryptedKeyCreateInput({
    final String? name,
    required final String phrase,
    @mnemonicJsonConverter required final MnemonicType mnemonicType,
    required final Password password,
  }) = _EncryptedKeyCreateInput;

  factory EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyCreateInputFromJson(json);
}
