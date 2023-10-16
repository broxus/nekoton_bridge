// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_transaction_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DecodedTransactionEventImpl _$$DecodedTransactionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$DecodedTransactionEventImpl(
      event: json['event'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$DecodedTransactionEventImplToJson(
        _$DecodedTransactionEventImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
