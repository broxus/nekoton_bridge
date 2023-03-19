import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_details.freezed.dart';
part 'ton_wallet_details.g.dart';

@freezed
class TonWalletDetails with _$TonWalletDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TonWalletDetails({
    required bool requiresSeparateDeploy,
    @amountJsonConverter required BigInt minAmount,
    required bool supportsPayload,
    required bool supportsMultipleOwners,
    required int expirationTime,
    required int? requiredConfirmations,
  }) = _TonWalletDetails;

  factory TonWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TonWalletDetailsFromJson(json);
}
