// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletInteractionInfoImpl _$$WalletInteractionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletInteractionInfoImpl(
      recipient: json['recipient'] == null
          ? null
          : Address.fromJson(json['recipient'] as String),
      knownPayload: json['knownPayload'] == null
          ? null
          : KnownPayload.fromJson(json['knownPayload'] as Map<String, dynamic>),
      method: WalletInteractionMethod.fromJson(
          json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletInteractionInfoImplToJson(
        _$WalletInteractionInfoImpl instance) =>
    <String, dynamic>{
      if (instance.recipient?.toJson() case final value?) 'recipient': value,
      if (instance.knownPayload?.toJson() case final value?)
        'knownPayload': value,
      'method': instance.method.toJson(),
    };
