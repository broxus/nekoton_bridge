// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_burn_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonBurnNotification _$JettonBurnNotificationFromJson(
  Map<String, dynamic> json,
) => _JettonBurnNotification(
  tokens: BigInt.parse(json['tokens'] as String),
  from: Address.fromJson(json['from'] as String),
);

Map<String, dynamic> _$JettonBurnNotificationToJson(
  _JettonBurnNotification instance,
) => <String, dynamic>{
  'tokens': instance.tokens.toString(),
  'from': instance.from.toJson(),
};
