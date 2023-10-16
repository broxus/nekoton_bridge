// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawTransactionImpl _$$RawTransactionImplFromJson(Map<String, dynamic> json) =>
    _$RawTransactionImpl(
      hash: json['hash'] as String,
      data: Transaction.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RawTransactionImplToJson(
        _$RawTransactionImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'data': instance.data.toJson(),
    };
