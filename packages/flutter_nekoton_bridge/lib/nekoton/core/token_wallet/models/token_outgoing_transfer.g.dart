// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenOutgoingTransfer _$$_TokenOutgoingTransferFromJson(
        Map<String, dynamic> json) =>
    _$_TokenOutgoingTransfer(
      to: TransferRecipient.fromJson(json['to'] as Map<String, dynamic>),
      tokens: json['tokens'] as String,
    );

Map<String, dynamic> _$$_TokenOutgoingTransferToJson(
        _$_TokenOutgoingTransfer instance) =>
    <String, dynamic>{
      'to': instance.to.toJson(),
      'tokens': instance.tokens,
    };
