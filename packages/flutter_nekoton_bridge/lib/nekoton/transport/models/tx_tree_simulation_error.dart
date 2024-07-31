import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/transport/transport_lib.dart';

part 'tx_tree_simulation_error.freezed.dart';

part 'tx_tree_simulation_error.g.dart';

@freezed
sealed class TxTreeSimulationError with _$TxTreeSimulationError {
  const factory TxTreeSimulationError({
    required final TxTreeSimulationErrorType type,
    final num? code,
  }) = _TxTreeSimulationError;

  factory TxTreeSimulationError.fromJson(Map<String, dynamic> json) =>
      _$TxTreeSimulationErrorFromJson(json);

  const TxTreeSimulationError._();
}
