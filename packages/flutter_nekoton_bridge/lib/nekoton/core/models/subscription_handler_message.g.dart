// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_handler_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionHandlerMessage _$SubscriptionHandlerMessageFromJson(
        Map<String, dynamic> json) =>
    _SubscriptionHandlerMessage(
      event: json['event'] as String,
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$SubscriptionHandlerMessageToJson(
        _SubscriptionHandlerMessage instance) =>
    <String, dynamic>{
      'event': instance.event,
      'payload': instance.payload,
    };
