// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InternalMessage _$$_InternalMessageFromJson(Map<String, dynamic> json) =>
    _$_InternalMessage(
      source: json['source'] as String?,
      destination: json['destination'] as String,
      amount: json['amount'] as String,
      bounce: json['bounce'] as bool,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_InternalMessageToJson(_$_InternalMessage instance) =>
    <String, dynamic>{
      'source': instance.source,
      'destination': instance.destination,
      'amount': instance.amount,
      'bounce': instance.bounce,
      'body': instance.body,
    };
