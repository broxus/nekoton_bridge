// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DePoolOnRoundCompleteNotification
    _$$_DePoolOnRoundCompleteNotificationFromJson(Map<String, dynamic> json) =>
        _$_DePoolOnRoundCompleteNotification(
          roundId: json['roundId'] as String,
          reward: json['reward'] as String,
          ordinaryStake: json['ordinaryStake'] as String,
          vestingStake: json['vestingStake'] as String,
          lockStake: json['lockStake'] as String,
          reinvest: json['reinvest'] as bool,
          reason: json['reason'] as int,
        );

Map<String, dynamic> _$$_DePoolOnRoundCompleteNotificationToJson(
        _$_DePoolOnRoundCompleteNotification instance) =>
    <String, dynamic>{
      'roundId': instance.roundId,
      'reward': instance.reward,
      'ordinaryStake': instance.ordinaryStake,
      'vestingStake': instance.vestingStake,
      'lockStake': instance.lockStake,
      'reinvest': instance.reinvest,
      'reason': instance.reason,
    };
