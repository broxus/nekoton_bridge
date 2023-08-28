import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

part 'raw_contract_state.freezed.dart';
part 'raw_contract_state.g.dart';

@Freezed(unionKey: 'type')
sealed class RawContractState with _$RawContractState {
  const factory RawContractState.notExists(GenTimings timings) = _NotExists;

  const factory RawContractState.exists(ExistingContract data) = _Exists;

  factory RawContractState.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateFromJson(json);
}
