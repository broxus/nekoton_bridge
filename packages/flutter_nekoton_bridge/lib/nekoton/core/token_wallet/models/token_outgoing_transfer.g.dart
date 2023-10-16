// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenOutgoingTransferImpl _$$TokenOutgoingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenOutgoingTransferImpl(
      to: TransferRecipient.fromJson(json['to'] as Map<String, dynamic>),
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
    );

Map<String, dynamic> _$$TokenOutgoingTransferImplToJson(
        _$TokenOutgoingTransferImpl instance) =>
    <String, dynamic>{
      'to': instance.to.toJson(),
      'tokens': amountJsonConverter.toJson(instance.tokens),
    };
