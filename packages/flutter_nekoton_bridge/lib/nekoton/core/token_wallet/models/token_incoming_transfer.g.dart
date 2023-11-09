// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_incoming_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenIncomingTransfer _$$_TokenIncomingTransferFromJson(
        Map<String, dynamic> json) =>
    _$_TokenIncomingTransfer(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      senderAddress: Address.fromJson(json['senderAddress'] as String),
    );

Map<String, dynamic> _$$_TokenIncomingTransferToJson(
        _$_TokenIncomingTransfer instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'senderAddress': instance.senderAddress.toJson(),
    };
