import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multisig_submit_update_transaction.freezed.dart';
part 'multisig_submit_update_transaction.g.dart';

@freezed
sealed class MultisigSubmitUpdateTransaction
    with _$MultisigSubmitUpdateTransaction {
  factory MultisigSubmitUpdateTransaction({
    required final PublicKey custodian,
    @JsonKey(name: 'new_code_hash') required final String? newCodeHash,
    @JsonKey(name: 'new_owners') required final bool newOwners,
    @JsonKey(name: 'new_req_confirms') required final bool newReqConfirms,
    @JsonKey(name: 'new_lifetime') required final bool newLifetime,
    @JsonKey(name: 'update_id') required final String updateId,
  }) = _MultisigSubmitUpdateTransaction;

  factory MultisigSubmitUpdateTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSubmitUpdateTransactionFromJson(json);
}
