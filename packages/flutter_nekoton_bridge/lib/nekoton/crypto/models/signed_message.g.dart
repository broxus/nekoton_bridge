// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedMessageImpl _$$SignedMessageImplFromJson(Map<String, dynamic> json) =>
    _$SignedMessageImpl(
      hash: json['hash'] as String,
      expireAt:
          dateSecondsSinceEpochJsonConverter.fromJson(json['expireAt'] as int),
      boc: json['boc'] as String,
    );

Map<String, dynamic> _$$SignedMessageImplToJson(_$SignedMessageImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'expireAt': dateSecondsSinceEpochJsonConverter.toJson(instance.expireAt),
      'boc': instance.boc,
    };
