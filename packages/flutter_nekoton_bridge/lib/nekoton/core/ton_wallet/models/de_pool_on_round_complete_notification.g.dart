// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DePoolOnRoundCompleteNotification _$DePoolOnRoundCompleteNotificationFromJson(
  Map<String, dynamic> json,
) => _DePoolOnRoundCompleteNotification(
  roundId: json['roundId'] as String,
  reward: BigInt.parse(json['reward'] as String),
  ordinaryStake: BigInt.parse(json['ordinaryStake'] as String),
  vestingStake: BigInt.parse(json['vestingStake'] as String),
  lockStake: BigInt.parse(json['lockStake'] as String),
  reinvest: json['reinvest'] as bool,
  reason: (json['reason'] as num).toInt(),
);

Map<String, dynamic> _$DePoolOnRoundCompleteNotificationToJson(
  _DePoolOnRoundCompleteNotification instance,
) => <String, dynamic>{
  'roundId': instance.roundId,
  'reward': instance.reward.toString(),
  'ordinaryStake': instance.ordinaryStake.toString(),
  'vestingStake': instance.vestingStake.toString(),
  'lockStake': instance.lockStake.toString(),
  'reinvest': instance.reinvest,
  'reason': instance.reason,
};
