// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_message_expired_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnMessageExpiredPayload _$OnMessageExpiredPayloadFromJson(
        Map<String, dynamic> json) =>
    _OnMessageExpiredPayload(
      pendingTransaction: PendingTransaction.fromJson(
          json['pending_transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OnMessageExpiredPayloadToJson(
        _OnMessageExpiredPayload instance) =>
    <String, dynamic>{
      'pending_transaction': instance.pendingTransaction.toJson(),
    };
