// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_tree_simulation_error_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxTreeSimulationErrorItem _$TxTreeSimulationErrorItemFromJson(
  Map<String, dynamic> json,
) => _TxTreeSimulationErrorItem(
  address: Address.fromJson(json['address'] as String),
  error: TxTreeSimulationError.fromJson(json['error'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TxTreeSimulationErrorItemToJson(
  _TxTreeSimulationErrorItem instance,
) => <String, dynamic>{
  'address': instance.address.toJson(),
  'error': instance.error.toJson(),
};
