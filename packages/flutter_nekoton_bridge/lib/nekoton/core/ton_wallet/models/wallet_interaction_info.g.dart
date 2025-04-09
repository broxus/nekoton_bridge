// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletInteractionInfo _$WalletInteractionInfoFromJson(
        Map<String, dynamic> json) =>
    _WalletInteractionInfo(
      recipient: json['recipient'] == null
          ? null
          : Address.fromJson(json['recipient'] as String),
      knownPayload: json['knownPayload'] == null
          ? null
          : KnownPayload.fromJson(json['knownPayload'] as Map<String, dynamic>),
      method: WalletInteractionMethod.fromJson(
          json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletInteractionInfoToJson(
        _WalletInteractionInfo instance) =>
    <String, dynamic>{
      if (instance.recipient?.toJson() case final value?) 'recipient': value,
      if (instance.knownPayload?.toJson() case final value?)
        'knownPayload': value,
      'method': instance.method.toJson(),
    };
