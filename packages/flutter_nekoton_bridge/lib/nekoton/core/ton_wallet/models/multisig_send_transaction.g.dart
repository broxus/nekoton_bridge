// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigSendTransaction _$MultisigSendTransactionFromJson(
        Map<String, dynamic> json) =>
    _MultisigSendTransaction(
      dest: Address.fromJson(json['dest'] as String),
      value: amountJsonConverter.fromJson(json['value'] as String),
      bounce: json['bounce'] as bool,
      flags: (json['flags'] as num).toInt(),
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$MultisigSendTransactionToJson(
        _MultisigSendTransaction instance) =>
    <String, dynamic>{
      'dest': instance.dest.toJson(),
      'value': amountJsonConverter.toJson(instance.value),
      'bounce': instance.bounce,
      'flags': instance.flags,
      'payload': instance.payload,
    };
