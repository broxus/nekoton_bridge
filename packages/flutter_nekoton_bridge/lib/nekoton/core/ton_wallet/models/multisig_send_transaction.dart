import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_send_transaction.freezed.dart';

part 'multisig_send_transaction.g.dart';

@freezed
class MultisigSendTransaction with _$MultisigSendTransaction {
  const factory MultisigSendTransaction({
    required final String dest,
    @amountJsonConverter required final Fixed value,
    required final bool bounce,
    required final int flags,
    required final String payload,
  }) = _MultisigSendTransaction;

  factory MultisigSendTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSendTransactionFromJson(json);
}
