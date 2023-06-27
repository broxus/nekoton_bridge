// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_swap_back.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenSwapBack _$$_TokenSwapBackFromJson(Map<String, dynamic> json) =>
    _$_TokenSwapBack(
      tokens: json['tokens'] as String,
      callbackAddress:
          addressJsonConverter.fromJson(json['callback_address'] as String),
      callbackPayload: json['callback_payload'] as String,
    );

Map<String, dynamic> _$$_TokenSwapBackToJson(_$_TokenSwapBack instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'callback_address': addressJsonConverter.toJson(instance.callbackAddress),
      'callback_payload': instance.callbackPayload,
    };
