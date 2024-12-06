// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_outgoing_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JettonOutgoingTransferImpl _$$JettonOutgoingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$JettonOutgoingTransferImpl(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      to: Address.fromJson(json['to'] as String),
    );

Map<String, dynamic> _$$JettonOutgoingTransferImplToJson(
        _$JettonOutgoingTransferImpl instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'to': instance.to.toJson(),
    };
