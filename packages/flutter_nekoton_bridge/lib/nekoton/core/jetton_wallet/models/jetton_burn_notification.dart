import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_burn_notification.freezed.dart';
part 'jetton_burn_notification.g.dart';

@freezed
sealed class JettonBurnNotification with _$JettonBurnNotification {
  const factory JettonBurnNotification({
    required final BigInt tokens,
    required final Address from,
  }) = _JettonBurnNotification;

  factory JettonBurnNotification.fromJson(Map<String, dynamic> json) =>
      _$JettonBurnNotificationFromJson(json);
}
