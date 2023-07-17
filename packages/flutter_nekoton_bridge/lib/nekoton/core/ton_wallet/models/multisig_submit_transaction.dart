import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_submit_transaction.freezed.dart';

part 'multisig_submit_transaction.g.dart';

@freezed
sealed class MultisigSubmitTransaction with _$MultisigSubmitTransaction {
  const factory MultisigSubmitTransaction({
    required final PublicKey custodian,
    required final Address dest,
    @amountJsonConverter required final Fixed value,
    required final bool bounce,
    required final bool allBalance,
    required final String payload,
    required final String transId,
  }) = _MultisigSubmitTransaction;

  factory MultisigSubmitTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSubmitTransactionFromJson(json);
}
