import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_confirm_update_transaction.freezed.dart';
part 'multisig_confirm_update_transaction.g.dart';

@freezed
sealed class MultisigConfirmUpdateTransaction
    with _$MultisigConfirmUpdateTransaction {
  factory MultisigConfirmUpdateTransaction({
    required final PublicKey custodian,
    @JsonKey(name: 'update_id') required final String updateId,
  }) = _MultisigConfirmUpdateTransaction;

  factory MultisigConfirmUpdateTransaction.fromJson(
    Map<String, dynamic> json,
  ) => _$MultisigConfirmUpdateTransactionFromJson(json);
}
