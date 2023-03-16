// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      hash: json['hash'] as String,
      src: json['src'] as String?,
      dst: json['dst'] as String?,
      value: json['value'] as String,
      bounce: json['bounce'] as bool,
      bounced: json['bounced'] as bool,
      body: json['body'] as String?,
      bodyHash: json['bodyHash'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'src': instance.src,
      'dst': instance.dst,
      'value': instance.value,
      'bounce': instance.bounce,
      'bounced': instance.bounced,
      'body': instance.body,
      'bodyHash': instance.bodyHash,
    };
