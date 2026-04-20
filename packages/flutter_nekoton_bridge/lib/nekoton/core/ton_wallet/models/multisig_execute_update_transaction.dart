import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_execute_update_transaction.freezed.dart';
part 'multisig_execute_update_transaction.g.dart';

@freezed
sealed class MultisigExecuteUpdateTransaction
    with _$MultisigExecuteUpdateTransaction {
  factory MultisigExecuteUpdateTransaction({
    required final PublicKey custodian,
    @JsonKey(name: 'update_id') required final String updateId,
  }) = _MultisigExecuteUpdateTransaction;

  factory MultisigExecuteUpdateTransaction.fromJson(
    Map<String, dynamic> json,
  ) => _$MultisigExecuteUpdateTransactionFromJson(json);
}
