import 'package:freezed_annotation/freezed_annotation.dart';

part 'de_pool_on_round_complete_notification.freezed.dart';
part 'de_pool_on_round_complete_notification.g.dart';

@freezed
class DePoolOnRoundCompleteNotification
    with _$DePoolOnRoundCompleteNotification {
  const factory DePoolOnRoundCompleteNotification({
    required final String roundId,
    required final String reward,
    required final String ordinaryStake,
    required final String vestingStake,
    required final String lockStake,
    required final bool reinvest,
    required final int reason,
  }) = _DePoolOnRoundCompleteNotification;

  factory DePoolOnRoundCompleteNotification.fromJson(
          Map<String, dynamic> json) =>
      _$DePoolOnRoundCompleteNotificationFromJson(json);
}
