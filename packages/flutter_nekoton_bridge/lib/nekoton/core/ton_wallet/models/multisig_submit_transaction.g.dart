// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_submit_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultisigSubmitTransactionImpl _$$MultisigSubmitTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MultisigSubmitTransactionImpl(
      custodian: PublicKey.fromJson(json['custodian'] as String),
      dest: Address.fromJson(json['dest'] as String),
      value: amountJsonConverter.fromJson(json['value'] as String),
      bounce: json['bounce'] as bool,
      allBalance: json['allBalance'] as bool,
      payload: json['payload'] as String,
      transId: json['transId'] as String,
    );

Map<String, dynamic> _$$MultisigSubmitTransactionImplToJson(
        _$MultisigSubmitTransactionImpl instance) =>
    <String, dynamic>{
      'custodian': instance.custodian.toJson(),
      'dest': instance.dest.toJson(),
      'value': amountJsonConverter.toJson(instance.value),
      'bounce': instance.bounce,
      'allBalance': instance.allBalance,
      'payload': instance.payload,
      'transId': instance.transId,
    };
