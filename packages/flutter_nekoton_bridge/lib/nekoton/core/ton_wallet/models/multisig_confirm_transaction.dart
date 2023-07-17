import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

part 'multisig_confirm_transaction.freezed.dart';

part 'multisig_confirm_transaction.g.dart';

@freezed
sealed class MultisigConfirmTransaction with _$MultisigConfirmTransaction {
  const factory MultisigConfirmTransaction({
    required final PublicKey custodian,
    required final String transactionId,
  }) = _MultisigConfirmTransaction;

  factory MultisigConfirmTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigConfirmTransactionFromJson(json);
}
