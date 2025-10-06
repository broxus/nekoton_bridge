import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_details.freezed.dart';

part 'token_wallet_details.g.dart';

@freezed
sealed class TokenWalletDetails with _$TokenWalletDetails {
  const factory TokenWalletDetails({
    required final Address rootAddress,
    required final Address ownerAddress,
    required final BigInt balance,
  }) = _TokenWalletDetails;

  factory TokenWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletDetailsFromJson(json);
}
