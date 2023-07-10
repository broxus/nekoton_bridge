import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/known_payload.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/wallet_interaction_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_interaction_info.freezed.dart';
part 'wallet_interaction_info.g.dart';

@freezed
class WalletInteractionInfo with _$WalletInteractionInfo {
  const factory WalletInteractionInfo({
    required final WalletInteractionMethod method, @JsonKey(includeIfNull: false) final String? recipient,
    @JsonKey(includeIfNull: false) final KnownPayload? knownPayload,
  }) = _WalletInteractionInfo;

  factory WalletInteractionInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInteractionInfoFromJson(json);
}
