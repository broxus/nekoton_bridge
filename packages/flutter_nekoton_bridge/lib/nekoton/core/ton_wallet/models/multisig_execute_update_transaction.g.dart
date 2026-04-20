// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_execute_update_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultisigExecuteUpdateTransaction _$MultisigExecuteUpdateTransactionFromJson(
  Map<String, dynamic> json,
) => _MultisigExecuteUpdateTransaction(
  custodian: PublicKey.fromJson(json['custodian'] as String),
  updateId: json['update_id'] as String,
);

Map<String, dynamic> _$MultisigExecuteUpdateTransactionToJson(
  _MultisigExecuteUpdateTransaction instance,
) => <String, dynamic>{
  'custodian': instance.custodian.toJson(),
  'update_id': instance.updateId,
};
