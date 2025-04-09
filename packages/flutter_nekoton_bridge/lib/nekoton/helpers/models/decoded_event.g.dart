// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecodedEvent _$DecodedEventFromJson(Map<String, dynamic> json) =>
    _DecodedEvent(
      event: json['event'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DecodedEventToJson(_DecodedEvent instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
