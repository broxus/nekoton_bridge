import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_state.freezed.dart';

part 'contract_state.g.dart';

@freezed
sealed class ContractState with _$ContractState {
  const factory ContractState({
    @amountJsonConverter required final BigInt balance,
    required final GenTimings genTimings,
    final LastTransactionId? lastTransactionId,
    required final bool isDeployed,
    final String? codeHash,
  }) = _ContractState;

  factory ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);
}
