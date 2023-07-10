import 'package:flutter_nekoton_bridge/nekoton/core/core_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assets_list.freezed.dart';
part 'assets_list.g.dart';

@freezed
class AssetsList with _$AssetsList implements Comparable<AssetsList> {
  const factory AssetsList({
    required final String name,
    required final TonWalletAsset tonWallet,
    // List of Token assets that are owned by this wallet.
    // key - should be <Transport.group>, value - list of tokens.
    // key will be specified from <AccountsStorage.addTokenWallet> method
    required final Map<String, AdditionalAssets> additionalAssets,
  }) = _AssetsList;

  factory AssetsList.fromJson(Map<String, dynamic> json) =>
      _$AssetsListFromJson(json);

  const AssetsList._();

  int get workchain => tonWallet.workchain;

  Address get address => tonWallet.address;

  PublicKey get publicKey => tonWallet.publicKey;

  @override
  int compareTo(AssetsList other) => address.compareTo(other.address);
}
