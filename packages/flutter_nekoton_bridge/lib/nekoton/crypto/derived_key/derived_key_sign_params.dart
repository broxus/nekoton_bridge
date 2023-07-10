import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_sign_params_by_account_id.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_sign_params_by_public_key.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/sign_input.dart';

part 'derived_key_sign_params.freezed.dart';
part 'derived_key_sign_params.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class DerivedKeyPassword with _$DerivedKeyPassword implements SignInput {
  const factory DerivedKeyPassword.byAccountId(
      final DerivedKeyPasswordByAccountId data) = _ByAccountId;

  const factory DerivedKeyPassword.byPublicKey(
      final DerivedKeyPasswordByPublicKey data) = _ByPublicKey;

  factory DerivedKeyPassword.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordFromJson(json);
}
