// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_transaction_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecodedTransactionEvent _$DecodedTransactionEventFromJson(
        Map<String, dynamic> json) =>
    _DecodedTransactionEvent(
      event: json['event'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DecodedTransactionEventToJson(
        _DecodedTransactionEvent instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
