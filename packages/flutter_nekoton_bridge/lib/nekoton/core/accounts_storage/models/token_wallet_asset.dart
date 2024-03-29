import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_asset.freezed.dart';
part 'token_wallet_asset.g.dart';

@freezed
sealed class TokenWalletAsset with _$TokenWalletAsset {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenWalletAsset({
    required final Address rootTokenContract,
  }) = _TokenWalletAsset;

  factory TokenWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletAssetFromJson(json);
}
