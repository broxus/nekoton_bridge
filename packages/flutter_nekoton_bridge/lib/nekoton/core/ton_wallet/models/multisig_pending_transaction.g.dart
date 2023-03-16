// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_pending_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultisigPendingTransaction _$$_MultisigPendingTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_MultisigPendingTransaction(
      id: json['id'] as String,
      confirmations: (json['confirmations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      signsRequired: json['signs_required'] as int,
      signsReceived: json['signs_received'] as int,
      creator: json['creator'] as String,
      index: json['index'] as int,
      dest: json['dest'] as String,
      value: json['value'] as String,
      sendFlags: json['send_flags'] as int,
      payload: json['payload'] as String,
      bounce: json['bounce'] as bool,
    );

Map<String, dynamic> _$$_MultisigPendingTransactionToJson(
        _$_MultisigPendingTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'confirmations': instance.confirmations,
      'signs_required': instance.signsRequired,
      'signs_received': instance.signsReceived,
      'creator': instance.creator,
      'index': instance.index,
      'dest': instance.dest,
      'value': instance.value,
      'send_flags': instance.sendFlags,
      'payload': instance.payload,
      'bounce': instance.bounce,
    };
