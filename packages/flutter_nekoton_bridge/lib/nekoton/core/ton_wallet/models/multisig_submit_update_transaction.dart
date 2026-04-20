import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_submit_update_transaction.freezed.dart';
part 'multisig_submit_update_transaction.g.dart';

@freezed
sealed class MultisigSubmitUpdateTransaction
    with _$MultisigSubmitUpdateTransaction {
  factory MultisigSubmitUpdateTransaction({
    required final PublicKey custodian,
    required final String? newCodeHash,
    required final bool newOwners,
    required final bool newReqConfirms,
    required final bool newLifetime,
    required final String updateId,
  }) = _MultisigSubmitUpdateTransaction;

  factory MultisigSubmitUpdateTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSubmitUpdateTransactionFromJson(json);
}
