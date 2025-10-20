// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigConfirmTransaction _$MultisigConfirmTransactionFromJson(
  Map<String, dynamic> json,
) => _MultisigConfirmTransaction(
  custodian: PublicKey.fromJson(json['custodian'] as String),
  transactionId: json['transactionId'] as String,
);

Map<String, dynamic> _$MultisigConfirmTransactionToJson(
  _MultisigConfirmTransaction instance,
) => <String, dynamic>{
  'custodian': instance.custodian.toJson(),
  'transactionId': instance.transactionId,
};
