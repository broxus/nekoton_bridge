// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultisigSendTransaction _$$_MultisigSendTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_MultisigSendTransaction(
      dest: json['dest'] as String,
      value: json['value'] as String,
      bounce: json['bounce'] as bool,
      flags: json['flags'] as int,
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$$_MultisigSendTransactionToJson(
        _$_MultisigSendTransaction instance) =>
    <String, dynamic>{
      'dest': instance.dest,
      'value': instance.value,
      'bounce': instance.bounce,
      'flags': instance.flags,
      'payload': instance.payload,
    };
