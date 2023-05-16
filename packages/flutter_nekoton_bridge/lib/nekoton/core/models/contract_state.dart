import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_state.freezed.dart';

part 'contract_state.g.dart';

@freezed
class ContractState with _$ContractState {
  const factory ContractState({
    @amountJsonConverter required Fixed balance,
    required GenTimings genTimings,
    LastTransactionId? lastTransactionId,
    required bool isDeployed,
    String? codeHash,
  }) = _ContractState;

  factory ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);
}
