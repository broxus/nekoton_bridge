import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/gen_timings.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/last_transaction_id.dart';

part 'contract_state.freezed.dart';

part 'contract_state.g.dart';

@freezed
class ContractState with _$ContractState {
  const factory ContractState({
    @amountJsonConverter required BigInt balance,
    required GenTimings genTimings,
    LastTransactionId? lastTransactionId,
    required bool isDeployed,
    String? codeHash,
  }) = _ContractState;

  factory ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);
}
