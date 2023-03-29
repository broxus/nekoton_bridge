import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_details.freezed.dart';

part 'token_wallet_details.g.dart';

@freezed
class TokenWalletDetails with _$TokenWalletDetails {
  const factory TokenWalletDetails({
    required String rootAddress,
    required String ownerAddress,
    @amountJsonConverter required BigInt balance,
  }) = _TokenWalletDetails;

  factory TokenWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletDetailsFromJson(json);
}
