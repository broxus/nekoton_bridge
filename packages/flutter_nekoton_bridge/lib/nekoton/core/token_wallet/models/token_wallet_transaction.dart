import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_incoming_transfer.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_outgoing_transfer.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_swap_back.dart';

part 'token_wallet_transaction.freezed.dart';
part 'token_wallet_transaction.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class TokenWalletTransaction with _$TokenWalletTransaction {
  const factory TokenWalletTransaction.incomingTransfer(
      final TokenIncomingTransfer data) = _IncomingTransfer;

  const factory TokenWalletTransaction.outgoingTransfer(
      final TokenOutgoingTransfer data) = _OutgoingTransfer;

  const factory TokenWalletTransaction.swapBack(final TokenSwapBack data) =
      _SwapBack;

  const factory TokenWalletTransaction.accept(final String data) = _Accept;

  const factory TokenWalletTransaction.transferBounced(final String data) =
      _TransferBounced;

  const factory TokenWalletTransaction.swapBackBounced(final String data) =
      _SwapBackBounced;

  factory TokenWalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionFromJson(json);
}
