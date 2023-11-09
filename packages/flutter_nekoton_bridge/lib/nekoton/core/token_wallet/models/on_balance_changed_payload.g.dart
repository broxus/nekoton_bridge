// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnBalanceChangedPayloadImpl _$$OnBalanceChangedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OnBalanceChangedPayloadImpl(
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$$OnBalanceChangedPayloadImplToJson(
        _$OnBalanceChangedPayloadImpl instance) =>
    <String, dynamic>{
      'balance': amountJsonConverter.toJson(instance.balance),
    };
