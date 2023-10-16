// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_message_expired_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnMessageExpiredPayloadImpl _$$OnMessageExpiredPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OnMessageExpiredPayloadImpl(
      pendingTransaction: PendingTransaction.fromJson(
          json['pending_transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnMessageExpiredPayloadImplToJson(
        _$OnMessageExpiredPayloadImpl instance) =>
    <String, dynamic>{
      'pending_transaction': instance.pendingTransaction.toJson(),
    };
