// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignedMessage _$$_SignedMessageFromJson(Map<String, dynamic> json) =>
    _$_SignedMessage(
      hash: json['hash'] as String,
      expireAt:
          dateSecondsSinceEpochJsonConverter.fromJson(json['expireAt'] as int),
      boc: json['boc'] as String,
    );

Map<String, dynamic> _$$_SignedMessageToJson(_$_SignedMessage instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'expireAt': dateSecondsSinceEpochJsonConverter.toJson(instance.expireAt),
      'boc': instance.boc,
    };
