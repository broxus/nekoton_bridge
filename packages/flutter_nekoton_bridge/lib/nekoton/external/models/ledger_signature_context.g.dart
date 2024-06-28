// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_signature_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerSignatureContextImpl _$$LedgerSignatureContextImplFromJson(
        Map<String, dynamic> json) =>
    _$LedgerSignatureContextImpl(
      decimals: (json['decimals'] as num).toInt(),
      asset: json['asset'] as String,
      amount: amountJsonConverter.fromJson(json['amount'] as String),
      address: Address.fromJson(json['address'] as String),
    );

Map<String, dynamic> _$$LedgerSignatureContextImplToJson(
        _$LedgerSignatureContextImpl instance) =>
    <String, dynamic>{
      'decimals': instance.decimals,
      'asset': instance.asset,
      'amount': amountJsonConverter.toJson(instance.amount),
      'address': instance.address.toJson(),
    };
