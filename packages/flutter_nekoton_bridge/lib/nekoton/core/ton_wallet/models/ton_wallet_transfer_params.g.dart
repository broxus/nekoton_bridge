// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transfer_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletTransferParams _$TonWalletTransferParamsFromJson(
  Map<String, dynamic> json,
) => _TonWalletTransferParams(
  destination: Address.fromJson(json['destination'] as String),
  amount: BigInt.parse(json['amount'] as String),
  bounce: json['bounce'] as bool,
  body: json['body'] as String?,
  stateInit: json['stateInit'] as String?,
);

Map<String, dynamic> _$TonWalletTransferParamsToJson(
  _TonWalletTransferParams instance,
) => <String, dynamic>{
  'destination': instance.destination.toJson(),
  'amount': instance.amount.toString(),
  'bounce': instance.bounce,
  'body': instance.body,
  'stateInit': instance.stateInit,
};
