// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_submit_update_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigSubmitUpdateTransaction _$MultisigSubmitUpdateTransactionFromJson(
  Map<String, dynamic> json,
) => _MultisigSubmitUpdateTransaction(
  custodian: PublicKey.fromJson(json['custodian'] as String),
  newCodeHash: json['newCodeHash'] as String?,
  newOwners: json['newOwners'] as bool,
  newReqConfirms: json['newReqConfirms'] as bool,
  newLifetime: json['newLifetime'] as bool,
  updateId: json['updateId'] as String,
);

Map<String, dynamic> _$MultisigSubmitUpdateTransactionToJson(
  _MultisigSubmitUpdateTransaction instance,
) => <String, dynamic>{
  'custodian': instance.custodian.toJson(),
  'newCodeHash': instance.newCodeHash,
  'newOwners': instance.newOwners,
  'newReqConfirms': instance.newReqConfirms,
  'newLifetime': instance.newLifetime,
  'updateId': instance.updateId,
};
