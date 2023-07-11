import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_sign_params_by_account_id.freezed.dart';
part 'derived_key_sign_params_by_account_id.g.dart';

@freezed
sealed class DerivedKeyPasswordByAccountId
    with _$DerivedKeyPasswordByAccountId {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyPasswordByAccountId({
    required final PublicKey masterKey,
    required final int accountId,
    required final Password password,
  }) = _DerivedKeyPasswordByAccountIdByAccountId;

  factory DerivedKeyPasswordByAccountId.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByAccountIdFromJson(json);
}
