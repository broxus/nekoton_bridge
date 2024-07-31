// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_tree_simulation_error_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxTreeSimulationErrorItemImpl _$$TxTreeSimulationErrorItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TxTreeSimulationErrorItemImpl(
      address: Address.fromJson(json['address'] as String),
      error:
          TxTreeSimulationError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TxTreeSimulationErrorItemImplToJson(
        _$TxTreeSimulationErrorItemImpl instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'error': instance.error.toJson(),
    };
