// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_tree_simulation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxTreeSimulationErrorImpl _$$TxTreeSimulationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$TxTreeSimulationErrorImpl(
      type: $enumDecode(_$TxTreeSimulationErrorTypeEnumMap, json['type']),
      code: json['code'] as num?,
    );

Map<String, dynamic> _$$TxTreeSimulationErrorImplToJson(
        _$TxTreeSimulationErrorImpl instance) =>
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
