// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultisigTransactionSend _$MultisigTransactionSendFromJson(
        Map<String, dynamic> json) =>
    MultisigTransactionSend(
      MultisigSendTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MultisigTransactionSendToJson(
        MultisigTransactionSend instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

MultisigTransactionSubmit _$MultisigTransactionSubmitFromJson(
        Map<String, dynamic> json) =>
    MultisigTransactionSubmit(
      MultisigSubmitTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MultisigTransactionSubmitToJson(
        MultisigTransactionSubmit instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

MultisigTransactionConfirm _$MultisigTransactionConfirmFromJson(
        Map<String, dynamic> json) =>
    MultisigTransactionConfirm(
      MultisigConfirmTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MultisigTransactionConfirmToJson(
        MultisigTransactionConfirm instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
