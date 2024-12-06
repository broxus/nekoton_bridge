// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_incoming_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JettonIncomingTransferImpl _$$JettonIncomingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$JettonIncomingTransferImpl(
      tokens: amountJsonConverter.fromJson(json['tokens'] as String),
      to: Address.fromJson(json['to'] as String),
    );

Map<String, dynamic> _$$JettonIncomingTransferImplToJson(
        _$JettonIncomingTransferImpl instance) =>
    <String, dynamic>{
      'tokens': amountJsonConverter.toJson(instance.tokens),
      'to': instance.to.toJson(),
    };
