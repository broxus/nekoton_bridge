import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_details.freezed.dart';
part 'ton_wallet_details.g.dart';

@freezed
sealed class TonWalletDetails with _$TonWalletDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TonWalletDetails({
    required final bool requiresSeparateDeploy,
    required final BigInt minAmount,
    required final bool supportsPayload,
    required final bool supportsMultipleOwners,
    // expirationTime in seconds
    required final int expirationTime,
    required final int? requiredConfirmations,
  }) = _TonWalletDetails;

  factory TonWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TonWalletDetailsFromJson(json);
}
