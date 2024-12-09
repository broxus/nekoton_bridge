import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_transaction.freezed.dart';
part 'token_wallet_transaction.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class TokenWalletTransaction with _$TokenWalletTransaction {
  const factory TokenWalletTransaction.transfer(
    final JettonOutgoingTransfer data,
  ) = _Transfer;

  const factory TokenWalletTransaction.internalTransfer(
    final JettonIncomingTransfer data,
  ) = _InternalTransfer;

  const factory TokenWalletTransaction.incomingTransfer(
      final TokenIncomingTransfer data) = _IncomingTransfer;

  const factory TokenWalletTransaction.outgoingTransfer(
      final TokenOutgoingTransfer data) = _OutgoingTransfer;

  const factory TokenWalletTransaction.swapBack(final TokenSwapBack data) =
      _SwapBack;

  const factory TokenWalletTransaction.accept(
    @amountJsonConverter final BigInt data,
  ) = _Accept;

  const factory TokenWalletTransaction.transferBounced(
    @amountJsonConverter final BigInt data,
  ) = _TransferBounced;

  const factory TokenWalletTransaction.swapBackBounced(
    @amountJsonConverter final BigInt data,
  ) = _SwapBackBounced;

  factory TokenWalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionFromJson(json);
}
