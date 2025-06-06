import 'package:flutter_nekoton_bridge/nekoton/core/models/not_existing_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

part 'raw_contract_state.freezed.dart';
part 'raw_contract_state.g.dart';

@Freezed(unionKey: 'type')
sealed class RawContractState with _$RawContractState {
  const factory RawContractState.notExists(NotExistingContract data) =
      RawContractStateNotExists;

  const factory RawContractState.exists(ExistingContract data) =
      RawContractStateExists;

  const RawContractState._();

  factory RawContractState.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateFromJson(json);

  bool isExists() {
    return this is _Exists;
  }
}
