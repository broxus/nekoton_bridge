import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_contract_state.freezed.dart';

part 'full_contract_state.g.dart';

@freezed
class FullContractState with _$FullContractState {
  const factory FullContractState({
    @amountJsonConverter required final Fixed balance,
    required final GenTimings genTimings,
    required final bool isDeployed, required final String boc, final LastTransactionId? lastTransactionId,
    final String? codeHash,
  }) = _FullContractState;

  factory FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);
}
