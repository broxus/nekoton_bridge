// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_transactions_found_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnTransactionsFoundPayloadImpl _$$OnTransactionsFoundPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OnTransactionsFoundPayloadImpl(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      batchInfo: TransactionsBatchInfo.fromJson(
          json['batch_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnTransactionsFoundPayloadImplToJson(
        _$OnTransactionsFoundPayloadImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'batch_info': instance.batchInfo.toJson(),
    };
