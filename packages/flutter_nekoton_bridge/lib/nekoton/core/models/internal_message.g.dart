// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalMessageImpl _$$InternalMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalMessageImpl(
      source: json['source'] == null
          ? null
          : Address.fromJson(json['source'] as String),
      destination: Address.fromJson(json['destination'] as String),
      amount: amountJsonConverter.fromJson(json['amount'] as String),
      bounce: json['bounce'] as bool,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$InternalMessageImplToJson(
        _$InternalMessageImpl instance) =>
    <String, dynamic>{
      'source': instance.source?.toJson(),
      'destination': instance.destination.toJson(),
      'amount': amountJsonConverter.toJson(instance.amount),
      'bounce': instance.bounce,
      'body': instance.body,
    };
