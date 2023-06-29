import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_details.freezed.dart';
part 'ton_wallet_details.g.dart';

@freezed
class TonWalletDetails with _$TonWalletDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TonWalletDetails({
    required final bool requiresSeparateDeploy,
    @amountJsonConverter required final Fixed minAmount,
    required final bool supportsPayload,
    required final bool supportsMultipleOwners,
    required final int expirationTime,
    required final int? requiredConfirmations,
  }) = _TonWalletDetails;

  factory TonWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TonWalletDetailsFromJson(json);
}
