// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_tree_simulation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxTreeSimulationError _$TxTreeSimulationErrorFromJson(
        Map<String, dynamic> json) =>
    _TxTreeSimulationError(
      type: $enumDecode(_$TxTreeSimulationErrorTypeEnumMap, json['type']),
      code: json['code'] as num?,
    );

Map<String, dynamic> _$TxTreeSimulationErrorToJson(
        _TxTreeSimulationError instance) =>
    <String, dynamic>{
      'type': _$TxTreeSimulationErrorTypeEnumMap[instance.type]!,
      'code': instance.code,
    };

const _$TxTreeSimulationErrorTypeEnumMap = {
  TxTreeSimulationErrorType.computePhase: 'compute_phase',
  TxTreeSimulationErrorType.actionPhase: 'action_phase',
  TxTreeSimulationErrorType.frozen: 'frozen',
  TxTreeSimulationErrorType.deleted: 'deleted',
};
