// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenOutgoingTransfer _$TokenOutgoingTransferFromJson(
  Map<String, dynamic> json,
) => _TokenOutgoingTransfer(
  to: TransferRecipient.fromJson(json['to'] as Map<String, dynamic>),
  tokens: BigInt.parse(json['tokens'] as String),
);

Map<String, dynamic> _$TokenOutgoingTransferToJson(
  _TokenOutgoingTransfer instance,
) => <String, dynamic>{
  'to': instance.to.toJson(),
  'tokens': instance.tokens.toString(),
};
