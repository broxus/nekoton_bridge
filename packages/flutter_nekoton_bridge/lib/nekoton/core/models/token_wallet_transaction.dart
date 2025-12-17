import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_wallet_transaction.freezed.dart';
part 'token_wallet_transaction.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class TokenWalletTransaction with _$TokenWalletTransaction {
  const factory TokenWalletTransaction.transfer(
    final JettonOutgoingTransfer data,
  ) = TokenWalletTransactionTransfer;

  const factory TokenWalletTransaction.internalTransfer(
    final JettonIncomingTransfer data,
  ) = TokenWalletTransactionInternalTransfer;

  const factory TokenWalletTransaction.burnNotification(
    final JettonBurnNotification data,
  ) = TokenWalletTransactionBurnNotification;

  const factory TokenWalletTransaction.incomingTransfer(
    final TokenIncomingTransfer data,
  ) = TokenWalletTransactionIncomingTransfer;

  const factory TokenWalletTransaction.outgoingTransfer(
    final TokenOutgoingTransfer data,
  ) = TokenWalletTransactionOutgoingTransfer;

  const factory TokenWalletTransaction.swapBack(final TokenSwapBack data) =
      TokenWalletTransactionSwapBack;

  const factory TokenWalletTransaction.accept(final BigInt data) =
      TokenWalletTransactionAccept;

  const factory TokenWalletTransaction.transferBounced(final BigInt data) =
      TokenWalletTransactionTransferBounced;

  const factory TokenWalletTransaction.swapBackBounced(final BigInt data) =
      TokenWalletTransactionSwapBackBounced;

  factory TokenWalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionFromJson(json);
}
