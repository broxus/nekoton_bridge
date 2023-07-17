// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_swap_back.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenSwapBack _$$_TokenSwapBackFromJson(Map<String, dynamic> json) =>
    _$_TokenSwapBack(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      callbackAddress: Address.fromJson(json['callback_address'] as String),
      callbackPayload: json['callback_payload'] as String,
    );

Map<String, dynamic> _$$_TokenSwapBackToJson(_$_TokenSwapBack instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'callback_address': instance.callbackAddress.toJson(),
      'callback_payload': instance.callbackPayload,
    };
