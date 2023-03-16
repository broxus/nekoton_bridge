// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_signature_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LedgerSignatureContext _$$_LedgerSignatureContextFromJson(
        Map<String, dynamic> json) =>
    _$_LedgerSignatureContext(
      decimals: json['decimals'] as int,
      asset: json['asset'] as String,
      amount: json['amount'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_LedgerSignatureContextToJson(
        _$_LedgerSignatureContext instance) =>
    <String, dynamic>{
      'decimals': instance.decimals,
      'asset': instance.asset,
      'amount': instance.amount,
      'address': instance.address,
    };
