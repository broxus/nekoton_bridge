// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastTransactionIdImpl _$$LastTransactionIdImplFromJson(
        Map<String, dynamic> json) =>
    _$LastTransactionIdImpl(
      isExact: json['isExact'] as bool,
      lt: json['lt'] as String,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$$LastTransactionIdImplToJson(
        _$LastTransactionIdImpl instance) =>
    <String, dynamic>{
      'isExact': instance.isExact,
      'lt': instance.lt,
      if (instance.hash case final value?) 'hash': value,
    };
