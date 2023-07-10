import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_confirm_transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_send_transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_submit_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_transaction.freezed.dart';
part 'multisig_transaction.g.dart';

@Freezed(unionKey: 'type')
class MultisigTransaction with _$MultisigTransaction {
  const factory MultisigTransaction.send(final MultisigSendTransaction data) =
      _Send;

  const factory MultisigTransaction.submit(
      final MultisigSubmitTransaction data,) = _Submit;

  const factory MultisigTransaction.confirm(
      final MultisigConfirmTransaction data,) = _Confirm;

  factory MultisigTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigTransactionFromJson(json);
}
