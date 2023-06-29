import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_update_params_change_password.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_update_params_rename.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/update_key_input.dart';

part 'encrypted_key_update_params.freezed.dart';
part 'encrypted_key_update_params.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class EncryptedKeyUpdateParams
    with _$EncryptedKeyUpdateParams
    implements UpdateKeyInput {
  const factory EncryptedKeyUpdateParams.rename(
      final EncryptedKeyUpdateParamsRename data) = _Rename;

  const factory EncryptedKeyUpdateParams.changePassword(
    final EncryptedKeyUpdateParamsChangePassword data,
  ) = _ChangePassword;

  factory EncryptedKeyUpdateParams.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyUpdateParamsFromJson(json);
}
