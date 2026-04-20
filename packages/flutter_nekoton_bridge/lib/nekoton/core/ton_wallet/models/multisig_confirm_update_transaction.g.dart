// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_confirm_update_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigConfirmUpdateTransaction _$MultisigConfirmUpdateTransactionFromJson(
  Map<String, dynamic> json,
) => _MultisigConfirmUpdateTransaction(
  custodian: PublicKey.fromJson(json['custodian'] as String),
  updateId: json['updateId'] as String,
);

Map<String, dynamic> _$MultisigConfirmUpdateTransactionToJson(
  _MultisigConfirmUpdateTransaction instance,
) => <String, dynamic>{
  'custodian': instance.custodian.toJson(),
  'updateId': instance.updateId,
};
