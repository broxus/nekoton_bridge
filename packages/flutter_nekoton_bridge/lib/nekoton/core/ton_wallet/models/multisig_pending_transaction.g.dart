// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_pending_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultisigPendingTransactionImpl _$$MultisigPendingTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MultisigPendingTransactionImpl(
      id: json['id'] as String,
      confirmations: (json['confirmations'] as List<dynamic>)
          .map((e) => PublicKey.fromJson(e as String))
          .toList(),
      signsRequired: json['signs_required'] as int,
      signsReceived: json['signs_received'] as int,
      creator: PublicKey.fromJson(json['creator'] as String),
      index: json['index'] as int,
      dest: Address.fromJson(json['dest'] as String),
      value: amountJsonConverter.fromJson(json['value'] as String),
      sendFlags: json['send_flags'] as int,
      payload: json['payload'] as String,
      bounce: json['bounce'] as bool,
    );

Map<String, dynamic> _$$MultisigPendingTransactionImplToJson(
        _$MultisigPendingTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'confirmations': instance.confirmations.map((e) => e.toJson()).toList(),
      'signs_required': instance.signsRequired,
      'signs_received': instance.signsReceived,
      'creator': instance.creator.toJson(),
      'index': instance.index,
      'dest': instance.dest.toJson(),
      'value': amountJsonConverter.toJson(instance.value),
      'send_flags': instance.sendFlags,
      'payload': instance.payload,
      'bounce': instance.bounce,
    };
