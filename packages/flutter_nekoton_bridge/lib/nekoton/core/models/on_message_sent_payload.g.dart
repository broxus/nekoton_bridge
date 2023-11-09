// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_message_sent_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnMessageSentPayloadImpl _$$OnMessageSentPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OnMessageSentPayloadImpl(
      pendingTransaction: PendingTransaction.fromJson(
          json['pending_transaction'] as Map<String, dynamic>),
      transaction: json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnMessageSentPayloadImplToJson(
        _$OnMessageSentPayloadImpl instance) =>
    <String, dynamic>{
      'pending_transaction': instance.pendingTransaction.toJson(),
      'transaction': instance.transaction?.toJson(),
    };
