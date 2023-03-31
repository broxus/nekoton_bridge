import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/gen_timings.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/last_transaction_id.dart';

part 'full_contract_state.freezed.dart';
part 'full_contract_state.g.dart';

@freezed
class FullContractState with _$FullContractState {
  const factory FullContractState({
    @amountJsonConverter required BigInt balance,
    required GenTimings genTimings,
    LastTransactionId? lastTransactionId,
    required bool isDeployed,
    String? codeHash,
    required String boc,
  }) = _FullContractState;

  factory FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);
}
