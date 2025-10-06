// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletDetails _$TonWalletDetailsFromJson(Map<String, dynamic> json) =>
    _TonWalletDetails(
      requiresSeparateDeploy: json['requires_separate_deploy'] as bool,
      minAmount: BigInt.parse(json['min_amount'] as String),
      supportsPayload: json['supports_payload'] as bool,
      supportsMultipleOwners: json['supports_multiple_owners'] as bool,
      expirationTime: (json['expiration_time'] as num).toInt(),
      requiredConfirmations: (json['required_confirmations'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TonWalletDetailsToJson(_TonWalletDetails instance) =>
    <String, dynamic>{
      'requires_separate_deploy': instance.requiresSeparateDeploy,
      'min_amount': instance.minAmount.toString(),
      'supports_payload': instance.supportsPayload,
      'supports_multiple_owners': instance.supportsMultipleOwners,
      'expiration_time': instance.expirationTime,
      'required_confirmations': instance.requiredConfirmations,
    };
