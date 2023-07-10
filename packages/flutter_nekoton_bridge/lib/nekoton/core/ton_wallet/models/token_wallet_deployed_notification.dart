import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_deployed_notification.freezed.dart';
part 'token_wallet_deployed_notification.g.dart';

@freezed
sealed class TokenWalletDeployedNotification
    with _$TokenWalletDeployedNotification {
  const factory TokenWalletDeployedNotification({
    required final Address rootTokenContract,
  }) = _TokenWalletDeployedNotification;

  factory TokenWalletDeployedNotification.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletDeployedNotificationFromJson(json);
}
