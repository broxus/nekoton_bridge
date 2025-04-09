import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_confirm_transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_send_transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_submit_transaction.dart';

part 'multisig_transaction.freezed.dart';

part 'multisig_transaction.g.dart';

@Freezed(unionKey: 'type')
sealed class MultisigTransaction with _$MultisigTransaction {
  const factory MultisigTransaction.send(final MultisigSendTransaction data) =
      MultisigTransactionSend;

  const factory MultisigTransaction.submit(
    final MultisigSubmitTransaction data,
  ) = MultisigTransactionSubmit;

  const factory MultisigTransaction.confirm(
    final MultisigConfirmTransaction data,
  ) = MultisigTransactionConfirm;

  factory MultisigTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigTransactionFromJson(json);
}
