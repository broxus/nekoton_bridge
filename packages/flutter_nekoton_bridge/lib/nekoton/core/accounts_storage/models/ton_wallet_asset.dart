import 'package:flutter_nekoton_bridge/nekoton/core/core_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_asset.freezed.dart';

part 'ton_wallet_asset.g.dart';

@freezed
sealed class TonWalletAsset with _$TonWalletAsset {
  const factory TonWalletAsset({
    required final Address address,
    required final PublicKey publicKey,
    required WalletType contract,
  }) = _TonWalletAsset;

  factory TonWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$TonWalletAssetFromJson(json);

  const TonWalletAsset._();

  int get workchain => address.workchain;
}
