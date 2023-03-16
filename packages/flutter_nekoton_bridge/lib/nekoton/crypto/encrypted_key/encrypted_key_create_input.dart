import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_key_create_input.freezed.dart';
part 'encrypted_key_create_input.g.dart';

@freezed
class EncryptedKeyCreateInput
    with _$EncryptedKeyCreateInput
    implements CreateKeyInput {
  const factory EncryptedKeyCreateInput({
    String? name,
    required String phrase,
    required MnemonicType mnemonicType,
    required Password password,
  }) = _EncryptedKeyCreateInput;

  factory EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyCreateInputFromJson(json);
}
