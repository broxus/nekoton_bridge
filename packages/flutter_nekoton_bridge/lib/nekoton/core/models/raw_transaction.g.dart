// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RawTransaction _$RawTransactionFromJson(Map<String, dynamic> json) =>
    _RawTransaction(
      hash: json['hash'] as String,
      data: Transaction.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RawTransactionToJson(_RawTransaction instance) =>
    <String, dynamic>{'hash': instance.hash, 'data': instance.data.toJson()};
