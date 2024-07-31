import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/core_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/transport/transport_lib.dart';

part 'tx_tree_simulation_error_item.freezed.dart';

part 'tx_tree_simulation_error_item.g.dart';

@freezed
sealed class TxTreeSimulationErrorItem with _$TxTreeSimulationErrorItem {
  const factory TxTreeSimulationErrorItem({
    required final Address address,
    required final TxTreeSimulationError error,
  }) = _TxTreeSimulationErrorItem;

  factory TxTreeSimulationErrorItem.fromJson(Map<String, dynamic> json) =>
      _$TxTreeSimulationErrorItemFromJson(json);

  const TxTreeSimulationErrorItem._();
}
