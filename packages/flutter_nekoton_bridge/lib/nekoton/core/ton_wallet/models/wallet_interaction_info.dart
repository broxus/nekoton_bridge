import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

part 'wallet_interaction_info.freezed.dart';

part 'wallet_interaction_info.g.dart';

@freezed
sealed class WalletInteractionInfo with _$WalletInteractionInfo {
  const factory WalletInteractionInfo({
    @JsonKey(includeIfNull: false) final Address? recipient,
    @JsonKey(includeIfNull: false) final KnownPayload? knownPayload,
    required final WalletInteractionMethod method,
  }) = _WalletInteractionInfo;

  factory WalletInteractionInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInteractionInfoFromJson(json);
}
