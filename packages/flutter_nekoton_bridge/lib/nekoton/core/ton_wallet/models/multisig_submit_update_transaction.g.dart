// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_submit_update_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigSubmitUpdateTransaction _$MultisigSubmitUpdateTransactionFromJson(
  Map<String, dynamic> json,
) => _MultisigSubmitUpdateTransaction(
  custodian: PublicKey.fromJson(json['custodian'] as String),
  newCodeHash: json['new_code_hash'] as String?,
  newOwners: json['new_owners'] as bool,
  newReqConfirms: json['new_req_confirms'] as bool,
  newLifetime: json['new_lifetime'] as bool,
  updateId: json['update_id'] as String,
);

Map<String, dynamic> _$MultisigSubmitUpdateTransactionToJson(
  _MultisigSubmitUpdateTransaction instance,
) => <String, dynamic>{
  'custodian': instance.custodian.toJson(),
  'new_code_hash': instance.newCodeHash,
  'new_owners': instance.newOwners,
  'new_req_confirms': instance.newReqConfirms,
  'new_lifetime': instance.newLifetime,
  'update_id': instance.updateId,
};
