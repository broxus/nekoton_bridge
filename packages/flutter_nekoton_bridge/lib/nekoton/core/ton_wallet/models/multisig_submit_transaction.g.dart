// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_submit_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultisigSubmitTransaction _$$_MultisigSubmitTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_MultisigSubmitTransaction(
      custodian: json['custodian'] as String,
      dest: json['dest'] as String,
      value: json['value'] as String,
      bounce: json['bounce'] as bool,
      allBalance: json['allBalance'] as bool,
      payload: json['payload'] as String,
      transId: json['transId'] as String,
    );

Map<String, dynamic> _$$_MultisigSubmitTransactionToJson(
        _$_MultisigSubmitTransaction instance) =>
    <String, dynamic>{
      'custodian': instance.custodian,
      'dest': instance.dest,
      'value': instance.value,
      'bounce': instance.bounce,
      'allBalance': instance.allBalance,
      'payload': instance.payload,
      'transId': instance.transId,
    };
