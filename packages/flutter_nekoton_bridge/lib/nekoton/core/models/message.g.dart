// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
      hash: json['hash'] as String,
      src: json['src'] == null ? null : Address.fromJson(json['src'] as String),
      dst: json['dst'] == null ? null : Address.fromJson(json['dst'] as String),
      value: amountJsonConverter.fromJson(json['value'] as String),
      bounce: json['bounce'] as bool,
      bounced: json['bounced'] as bool,
      body: json['body'] as String?,
      bodyHash: json['bodyHash'] as String?,
    );

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
      'hash': instance.hash,
      'src': instance.src?.toJson(),
      'dst': instance.dst?.toJson(),
      'value': amountJsonConverter.toJson(instance.value),
      'bounce': instance.bounce,
      'bounced': instance.bounced,
      'body': instance.body,
      'bodyHash': instance.bodyHash,
    };
