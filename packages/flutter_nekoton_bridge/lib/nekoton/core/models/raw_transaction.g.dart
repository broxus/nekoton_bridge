// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawTransaction _$$_RawTransactionFromJson(Map<String, dynamic> json) =>
    _$_RawTransaction(
      hash: json['hash'] as String,
      data: Transaction.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RawTransactionToJson(_$_RawTransaction instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'data': instance.data.toJson(),
    };
