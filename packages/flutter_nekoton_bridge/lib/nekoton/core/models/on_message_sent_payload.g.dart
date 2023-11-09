// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_message_sent_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnMessageSentPayload _$$_OnMessageSentPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OnMessageSentPayload(
      pendingTransaction: PendingTransaction.fromJson(
          json['pending_transaction'] as Map<String, dynamic>),
      transaction: json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnMessageSentPayloadToJson(
        _$_OnMessageSentPayload instance) =>
    <String, dynamic>{
      'pending_transaction': instance.pendingTransaction.toJson(),
      'transaction': instance.transaction?.toJson(),
    };
