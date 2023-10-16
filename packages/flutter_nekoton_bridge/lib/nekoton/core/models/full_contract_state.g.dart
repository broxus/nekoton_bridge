// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullContractStateImpl _$$FullContractStateImplFromJson(
        Map<String, dynamic> json) =>
    _$FullContractStateImpl(
      balance: amountJsonConverter.fromJson(json['balance'] as String),
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

Map<String, dynamic> _$$FullContractStateImplToJson(
        _$FullContractStateImpl instance) =>
    <String, dynamic>{
      'balance': amountJsonConverter.toJson(instance.balance),
      'genTimings': instance.genTimings.toJson(),
      'lastTransactionId': instance.lastTransactionId?.toJson(),
      'isDeployed': instance.isDeployed,
      'codeHash': instance.codeHash,
      'boc': instance.boc,
    };
