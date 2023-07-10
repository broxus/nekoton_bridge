import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/sign_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/external/models/ledger_signature_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_sign_input.freezed.dart';
part 'ledger_sign_input.g.dart';

@freezed
class LedgerSignInput with _$LedgerSignInput implements SignInput {
  const factory LedgerSignInput({
    required final PublicKey publicKey,
    final LedgerSignatureContext? context,
  }) = _LedgerSignInput;

  factory LedgerSignInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignInputFromJson(json);
}
