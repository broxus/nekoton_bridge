// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transfer_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TonWalletTransferParamsImpl _$$TonWalletTransferParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$TonWalletTransferParamsImpl(
      destination: Address.fromJson(json['destination'] as String),
      amount: amountJsonConverter.fromJson(json['amount'] as String),
      bounce: json['bounce'] as bool,
      body: json['body'] as String?,
      stateInit: json['stateInit'] as String?,
    );

Map<String, dynamic> _$$TonWalletTransferParamsImplToJson(
        _$TonWalletTransferParamsImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination.toJson(),
      'amount': amountJsonConverter.toJson(instance.amount),
      'bounce': instance.bounce,
      'body': instance.body,
      'stateInit': instance.stateInit,
    };
