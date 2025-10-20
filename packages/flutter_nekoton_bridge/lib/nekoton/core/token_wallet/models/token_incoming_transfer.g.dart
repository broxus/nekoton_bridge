// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_incoming_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenIncomingTransfer _$TokenIncomingTransferFromJson(
  Map<String, dynamic> json,
) => _TokenIncomingTransfer(
  tokens: BigInt.parse(json['tokens'] as String),
  senderAddress: Address.fromJson(json['senderAddress'] as String),
);

Map<String, dynamic> _$TokenIncomingTransferToJson(
  _TokenIncomingTransfer instance,
) => <String, dynamic>{
  'tokens': instance.tokens.toString(),
  'senderAddress': instance.senderAddress.toJson(),
};
