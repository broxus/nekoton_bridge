// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractState _$$_ContractStateFromJson(Map<String, dynamic> json) =>
    _$_ContractState(
      balance: json['balance'] as String,
      genTimings:
          GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      lastTransactionId: json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      isDeployed: json['isDeployed'] as bool,
      codeHash: json['codeHash'] as String?,
    );

Map<String, dynamic> _$$_ContractStateToJson(_$_ContractState instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
    };
