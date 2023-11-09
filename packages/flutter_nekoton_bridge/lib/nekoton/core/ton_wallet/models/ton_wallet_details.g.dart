// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TonWalletDetailsImpl _$$TonWalletDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TonWalletDetailsImpl(
      requiresSeparateDeploy: json['requires_separate_deploy'] as bool,
      minAmount: amountJsonConverter.fromJson(json['min_amount'] as String),
      supportsPayload: json['supports_payload'] as bool,
      supportsMultipleOwners: json['supports_multiple_owners'] as bool,
      expirationTime: json['expiration_time'] as int,
      requiredConfirmations: json['required_confirmations'] as int?,
    );

Map<String, dynamic> _$$TonWalletDetailsImplToJson(
        _$TonWalletDetailsImpl instance) =>
    <String, dynamic>{
      'requires_separate_deploy': instance.requiresSeparateDeploy,
      'min_amount': amountJsonConverter.toJson(instance.minAmount),
      'supports_payload': instance.supportsPayload,
      'supports_multiple_owners': instance.supportsMultipleOwners,
      'expiration_time': instance.expirationTime,
      'required_confirmations': instance.requiredConfirmations,
    };
