// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExistingContractImpl _$$ExistingContractImplFromJson(
        Map<String, dynamic> json) =>
    _$ExistingContractImpl(
      account: json['account'] as String,
      timings: GenTimings.fromJson(json['timings'] as Map<String, dynamic>),
      lastTransactionId: LastTransactionId.fromJson(
          json['lastTransactionId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExistingContractImplToJson(
        _$ExistingContractImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'timings': instance.timings.toJson(),
      'lastTransactionId': instance.lastTransactionId.toJson(),
    };
