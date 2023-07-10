import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/depool_asset.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/token_wallet_asset.dart';

part 'additional_assets.freezed.dart';
part 'additional_assets.g.dart';

@freezed
sealed class AdditionalAssets with _$AdditionalAssets {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdditionalAssets({
    required final List<TokenWalletAsset> tokenWallets,
    required final List<DePoolAsset> depools,
  }) = _AdditionalAssets;

  factory AdditionalAssets.fromJson(Map<String, dynamic> json) =>
      _$AdditionalAssetsFromJson(json);
}
