// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_incoming_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenIncomingTransferImpl _$$TokenIncomingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenIncomingTransferImpl(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      senderAddress: Address.fromJson(json['senderAddress'] as String),
    );

Map<String, dynamic> _$$TokenIncomingTransferImplToJson(
        _$TokenIncomingTransferImpl instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'senderAddress': instance.senderAddress.toJson(),
    };
