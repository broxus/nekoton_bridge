// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignedMessage _$SignedMessageFromJson(Map<String, dynamic> json) =>
    _SignedMessage(
      hash: json['hash'] as String,
      expireAt: dateSecondsSinceEpochJsonConverter
          .fromJson((json['expireAt'] as num).toInt()),
      boc: json['boc'] as String,
    );

Map<String, dynamic> _$SignedMessageToJson(_SignedMessage instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'expireAt': dateSecondsSinceEpochJsonConverter.toJson(instance.expireAt),
      'boc': instance.boc,
    };
