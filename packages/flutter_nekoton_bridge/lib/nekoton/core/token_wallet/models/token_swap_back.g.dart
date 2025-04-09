// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_swap_back.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenSwapBack _$TokenSwapBackFromJson(Map<String, dynamic> json) =>
    _TokenSwapBack(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      callbackAddress: Address.fromJson(json['callback_address'] as String),
      callbackPayload: json['callback_payload'] as String,
    );

Map<String, dynamic> _$TokenSwapBackToJson(_TokenSwapBack instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'callback_address': instance.callbackAddress.toJson(),
      'callback_payload': instance.callbackPayload,
    };
