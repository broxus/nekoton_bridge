import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_wallet_transaction.freezed.dart';
part 'jetton_wallet_transaction.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class JettonWalletTransaction with _$JettonWalletTransaction {
  const factory JettonWalletTransaction.transfer(
    final JettonOutgoingTransfer data,
  ) = _Transfer;

  const factory JettonWalletTransaction.internalTransfer(
    final JettonIncomingTransfer data,
  ) = _InternalTransfer;

  factory JettonWalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$JettonWalletTransactionFromJson(json);
}
