// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_message_expired_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnMessageExpiredPayload _$$_OnMessageExpiredPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OnMessageExpiredPayload(
      pendingTransaction: PendingTransaction.fromJson(
          json['pending_transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnMessageExpiredPayloadToJson(
        _$_OnMessageExpiredPayload instance) =>
    <String, dynamic>{
      'pending_transaction': instance.pendingTransaction.toJson(),
    };
