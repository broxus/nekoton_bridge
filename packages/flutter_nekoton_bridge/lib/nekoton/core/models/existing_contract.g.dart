// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExistingContract _$$_ExistingContractFromJson(Map<String, dynamic> json) =>
    _$_ExistingContract(
      account: json['account'] as String,
      timings: GenTimings.fromJson(json['timings'] as Map<String, dynamic>),
      lastTransactionId: LastTransactionId.fromJson(
          json['lastTransactionId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExistingContractToJson(_$_ExistingContract instance) =>
    <String, dynamic>{
      'account': instance.account,
      'timings': instance.timings.toJson(),
      'lastTransactionId': instance.lastTransactionId.toJson(),
    };
