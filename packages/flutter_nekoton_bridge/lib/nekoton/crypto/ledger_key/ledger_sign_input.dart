import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/wallet_type.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/external/models/ledger_signature_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/sign_input.dart';

part 'ledger_sign_input.freezed.dart';
part 'ledger_sign_input.g.dart';

@freezed
abstract class LedgerSignInput with _$LedgerSignInput implements SignInput {
  const factory LedgerSignInput({
    required final WalletType wallet,
    required final PublicKey publicKey,
    final LedgerSignatureContext? context,
  }) = _LedgerSignInput;

  factory LedgerSignInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignInputFromJson(json);
}
