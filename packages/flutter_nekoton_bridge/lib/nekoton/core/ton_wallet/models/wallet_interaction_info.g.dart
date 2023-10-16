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
    _$WalletInteractionInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recipient', instance.recipient?.toJson());
  writeNotNull('knownPayload', instance.knownPayload?.toJson());
  val['method'] = instance.method.toJson();
  return val;
}
