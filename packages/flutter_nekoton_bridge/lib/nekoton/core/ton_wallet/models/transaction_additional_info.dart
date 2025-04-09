import 'package:flutter_nekoton_bridge/nekoton/core/jetton_wallet/models/jetton_incoming_transfer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/de_pool_on_round_complete_notification.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/de_pool_receive_answer_notification.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/token_wallet_deployed_notification.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/wallet_interaction_info.dart';

part 'transaction_additional_info.freezed.dart';
part 'transaction_additional_info.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class TransactionAdditionalInfo with _$TransactionAdditionalInfo {
  const factory TransactionAdditionalInfo.comment(final String data) = _Comment;

  const factory TransactionAdditionalInfo.dePoolOnRoundComplete(
    final DePoolOnRoundCompleteNotification data,
  ) = TransactionAdditionalInfoDePoolOnRoundComplete;

  const factory TransactionAdditionalInfo.dePoolReceiveAnswer(
    final DePoolReceiveAnswerNotification data,
  ) = TransactionAdditionalInfoDePoolReceiveAnswer;

  const factory TransactionAdditionalInfo.tokenWalletDeployed(
    final TokenWalletDeployedNotification data,
  ) = TransactionAdditionalInfoTokenWalletDeployed;

  const factory TransactionAdditionalInfo.walletInteraction(
          final WalletInteractionInfo data) =
      TransactionAdditionalInfoWalletInteraction;

  const factory TransactionAdditionalInfo.jettonNotify(
          final JettonIncomingTransfer data) =
      TransactionAdditionalInfoJettonNotify;

  factory TransactionAdditionalInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoFromJson(json);
}
