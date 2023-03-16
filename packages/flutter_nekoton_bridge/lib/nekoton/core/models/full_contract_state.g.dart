// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FullContractState _$$_FullContractStateFromJson(Map<String, dynamic> json) =>
    _$_FullContractState(
      balance: json['balance'] as String,
      genTimings:
          GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      lastTransactionId: json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      isDeployed: json['isDeployed'] as bool,
      codeHash: json['codeHash'] as String?,
      boc: json['boc'] as String,
    );

Map<String, dynamic> _$$_FullContractStateToJson(
        _$_FullContractState instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
      'boc': instance.boc,
    };
