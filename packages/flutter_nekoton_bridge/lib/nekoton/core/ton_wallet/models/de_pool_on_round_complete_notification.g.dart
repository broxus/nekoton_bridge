// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DePoolOnRoundCompleteNotification
    _$$_DePoolOnRoundCompleteNotificationFromJson(Map<String, dynamic> json) =>
        _$_DePoolOnRoundCompleteNotification(
          roundId: json['roundId'] as String,
          reward: amountJsonConverter.fromJson(json['reward'] as String),
          ordinaryStake:
              amountJsonConverter.fromJson(json['ordinaryStake'] as String),
          vestingStake:
              amountJsonConverter.fromJson(json['vestingStake'] as String),
          lockStake: amountJsonConverter.fromJson(json['lockStake'] as String),
          reinvest: json['reinvest'] as bool,
          reason: json['reason'] as int,
        );

Map<String, dynamic> _$$_DePoolOnRoundCompleteNotificationToJson(
        _$_DePoolOnRoundCompleteNotification instance) =>
    <String, dynamic>{
      'roundId': instance.roundId,
      'reward': amountJsonConverter.toJson(instance.reward),
      'ordinaryStake': amountJsonConverter.toJson(instance.ordinaryStake),
      'vestingStake': amountJsonConverter.toJson(instance.vestingStake),
      'lockStake': amountJsonConverter.toJson(instance.lockStake),
      'reinvest': instance.reinvest,
      'reason': instance.reason,
    };
