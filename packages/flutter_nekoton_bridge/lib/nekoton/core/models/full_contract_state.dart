import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_contract_state.freezed.dart';

part 'full_contract_state.g.dart';

@freezed
class FullContractState with _$FullContractState {
  const factory FullContractState({
    @amountJsonConverter required Fixed balance,
    required GenTimings genTimings,
    LastTransactionId? lastTransactionId,
    required bool isDeployed,
    String? codeHash,
    required String boc,
  }) = _FullContractState;

  factory FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);
}
