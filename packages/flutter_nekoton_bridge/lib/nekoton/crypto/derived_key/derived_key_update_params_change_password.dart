import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_update_params_change_password.freezed.dart';
part 'derived_key_update_params_change_password.g.dart';

@freezed
abstract class DerivedKeyUpdateParamsChangePassword
    with _$DerivedKeyUpdateParamsChangePassword {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyUpdateParamsChangePassword({
    required final PublicKey masterKey,
    required final Password oldPassword,
    required final Password newPassword,
  }) = _DerivedKeyUpdateParamsChangePassword;

  factory DerivedKeyUpdateParamsChangePassword.fromJson(
    Map<String, dynamic> json,
  ) => _$DerivedKeyUpdateParamsChangePasswordFromJson(json);
}
