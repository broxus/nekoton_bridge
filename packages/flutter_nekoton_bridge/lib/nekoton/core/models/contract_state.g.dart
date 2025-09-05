// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContractState _$ContractStateFromJson(Map<String, dynamic> json) =>
    _ContractState(
      balance: BigInt.parse(json['balance'] as String),
      genTimings:
          GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      lastTransactionId: json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      isDeployed: json['isDeployed'] as bool,
      codeHash: json['codeHash'] as String?,
    );

Map<String, dynamic> _$ContractStateToJson(_ContractState instance) =>
    <String, dynamic>{
      'balance': instance.balance.toString(),
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
    };
