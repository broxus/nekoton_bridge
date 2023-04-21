// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultisigConfirmTransaction _$$_MultisigConfirmTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_MultisigConfirmTransaction(
      custodian: json['custodian'] as String,
      transactionId: json['transactionId'] as String,
    );

Map<String, dynamic> _$$_MultisigConfirmTransactionToJson(
        _$_MultisigConfirmTransaction instance) =>
    <String, dynamic>{
      'custodian': instance.custodian,
      'transactionId': instance.transactionId,
    };
