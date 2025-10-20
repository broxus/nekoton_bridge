// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastTransactionId _$LastTransactionIdFromJson(Map<String, dynamic> json) =>
    _LastTransactionId(
      isExact: json['isExact'] as bool,
      lt: json['lt'] as String,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$LastTransactionIdToJson(_LastTransactionId instance) =>
    <String, dynamic>{
      'isExact': instance.isExact,
      'lt': instance.lt,
      'hash': ?instance.hash,
    };
