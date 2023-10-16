// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_handler_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionHandlerMessageImpl _$$SubscriptionHandlerMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionHandlerMessageImpl(
      event: json['event'] as String,
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$$SubscriptionHandlerMessageImplToJson(
        _$SubscriptionHandlerMessageImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'payload': instance.payload,
    };
