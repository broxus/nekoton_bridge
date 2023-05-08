// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_handler_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionHandlerMessage _$$_SubscriptionHandlerMessageFromJson(
        Map<String, dynamic> json) =>
    _$_SubscriptionHandlerMessage(
      event: json['event'] as String,
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$$_SubscriptionHandlerMessageToJson(
        _$_SubscriptionHandlerMessage instance) =>
    <String, dynamic>{
      'event': instance.event,
      'payload': instance.payload,
    };
