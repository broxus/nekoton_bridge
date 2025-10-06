// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_incoming_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonIncomingTransfer _$JettonIncomingTransferFromJson(
  Map<String, dynamic> json,
) => _JettonIncomingTransfer(
  tokens: BigInt.parse(json['tokens'] as String),
  from: Address.fromJson(json['from'] as String),
);

Map<String, dynamic> _$JettonIncomingTransferToJson(
  _JettonIncomingTransfer instance,
) => <String, dynamic>{
  'tokens': instance.tokens.toString(),
  'from': instance.from.toJson(),
};
