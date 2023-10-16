// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractStateImpl _$$ContractStateImplFromJson(Map<String, dynamic> json) =>
    _$ContractStateImpl(
      balance: amountJsonConverter.fromJson(json['balance'] as String),
      genTimings:
          GenTimings.fromJson(json['genTimings'] as Map<String, dynamic>),
      lastTransactionId: json['lastTransactionId'] == null
          ? null
          : LastTransactionId.fromJson(
              json['lastTransactionId'] as Map<String, dynamic>),
      isDeployed: json['isDeployed'] as bool,
      codeHash: json['codeHash'] as String?,
    );

Map<String, dynamic> _$$ContractStateImplToJson(_$ContractStateImpl instance) =>
    <String, dynamic>{
      'balance': amountJsonConverter.toJson(instance.balance),
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
    };
