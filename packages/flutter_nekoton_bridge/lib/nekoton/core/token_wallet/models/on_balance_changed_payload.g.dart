// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnBalanceChangedPayload _$OnBalanceChangedPayloadFromJson(
        Map<String, dynamic> json) =>
    _OnBalanceChangedPayload(
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$OnBalanceChangedPayloadToJson(
        _OnBalanceChangedPayload instance) =>
    <String, dynamic>{
      'balance': amountJsonConverter.toJson(instance.balance),
    };
