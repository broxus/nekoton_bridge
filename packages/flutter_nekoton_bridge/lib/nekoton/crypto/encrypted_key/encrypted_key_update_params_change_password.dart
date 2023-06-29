import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'encrypted_key_update_params_change_password.freezed.dart';
part 'encrypted_key_update_params_change_password.g.dart';

@freezed
class EncryptedKeyUpdateParamsChangePassword
    with _$EncryptedKeyUpdateParamsChangePassword {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EncryptedKeyUpdateParamsChangePassword({
    required final PublicKey publicKey,
    required final Password oldPassword,
    required final Password newPassword,
  }) = _EncryptedKeyUpdateParamsChangePasswordChangePassword;

  factory EncryptedKeyUpdateParamsChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$EncryptedKeyUpdateParamsChangePasswordFromJson(json);
}
