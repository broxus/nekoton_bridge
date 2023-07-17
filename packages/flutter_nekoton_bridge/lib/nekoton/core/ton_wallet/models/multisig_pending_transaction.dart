import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_pending_transaction.freezed.dart';

part 'multisig_pending_transaction.g.dart';

@freezed
sealed class MultisigPendingTransaction with _$MultisigPendingTransaction {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MultisigPendingTransaction({
    required final String id,
    required final List<PublicKey> confirmations,
    required final int signsRequired,
    required final int signsReceived,
    required final PublicKey creator,
    required final int index,
    required final Address dest,
    @amountJsonConverter required final Fixed value,
    required final int sendFlags,
    required final String payload,
    required final bool bounce,
  }) = _MultisigPendingTransaction;

  factory MultisigPendingTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigPendingTransactionFromJson(json);
}
