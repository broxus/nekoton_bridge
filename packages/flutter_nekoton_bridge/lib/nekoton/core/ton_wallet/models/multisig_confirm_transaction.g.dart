// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultisigConfirmTransactionImpl _$$MultisigConfirmTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MultisigConfirmTransactionImpl(
      custodian: PublicKey.fromJson(json['custodian'] as String),
      transactionId: json['transactionId'] as String,
    );

Map<String, dynamic> _$$MultisigConfirmTransactionImplToJson(
        _$MultisigConfirmTransactionImpl instance) =>
    <String, dynamic>{
      'custodian': instance.custodian.toJson(),
      'transactionId': instance.transactionId,
    };
