// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_outgoing_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonOutgoingTransfer _$JettonOutgoingTransferFromJson(
        Map<String, dynamic> json) =>
    _JettonOutgoingTransfer(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      to: Address.fromJson(json['to'] as String),
    );

Map<String, dynamic> _$JettonOutgoingTransferToJson(
        _JettonOutgoingTransfer instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'to': instance.to.toJson(),
    };
