import 'package:flutter_nekoton_bridge/nekoton/core/core_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_asset.freezed.dart';

part 'ton_wallet_asset.g.dart';

@freezed
class TonWalletAsset with _$TonWalletAsset {
  const factory TonWalletAsset({
    @addressJsonConverter required Address address,
    @publicKeyJsonConverter required PublicKey publicKey,
    required WalletType contract,
  }) = _TonWalletAsset;

  factory TonWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$TonWalletAssetFromJson(json);

  const TonWalletAsset._();

  int get workchain => address.workchain;
}
