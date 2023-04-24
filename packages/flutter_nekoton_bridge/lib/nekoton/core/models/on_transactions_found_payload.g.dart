// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_transactions_found_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnTransactionsFoundPayload _$$_OnTransactionsFoundPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OnTransactionsFoundPayload(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      batchInfo: TransactionsBatchInfo.fromJson(
          json['batch_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnTransactionsFoundPayloadToJson(
        _$_OnTransactionsFoundPayload instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'batch_info': instance.batchInfo.toJson(),
    };
