// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletInteractionInfo _$$_WalletInteractionInfoFromJson(
        Map<String, dynamic> json) =>
    _$_WalletInteractionInfo(
      recipient: json['recipient'] as String?,
      knownPayload: json['knownPayload'] == null
          ? null
          : KnownPayload.fromJson(json['knownPayload'] as Map<String, dynamic>),
      method: WalletInteractionMethod.fromJson(
          json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WalletInteractionInfoToJson(
    _$_WalletInteractionInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recipient', instance.recipient);
  writeNotNull('knownPayload', instance.knownPayload?.toJson());
  val['method'] = instance.method.toJson();
  return val;
}
