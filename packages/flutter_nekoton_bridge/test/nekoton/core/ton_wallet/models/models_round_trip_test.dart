import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../model_round_trip_test_utils.dart';

void main() {
  setUpAll(setUpRoundTripBridgeMocks);

  group('ton wallet models round-trip', () {
    testMapRoundTrip(
      name: 'DePoolOnRoundCompleteNotification round-trips',
      value: dePoolOnRoundCompleteFixture(),
      toJson: (value) => value.toJson(),
      fromJson: DePoolOnRoundCompleteNotification.fromJson,
    );

    testMapRoundTrip(
      name: 'DePoolReceiveAnswerNotification round-trips',
      value: dePoolReceiveAnswerFixture(),
      toJson: (value) => value.toJson(),
      fromJson: DePoolReceiveAnswerNotification.fromJson,
    );

    testMapRoundTrip(
      name: 'ExistingWalletInfo round-trips',
      value: existingWalletInfoFixture(),
      toJson: (value) => value.toJson(),
      fromJson: ExistingWalletInfo.fromJson,
    );

    testMapRoundTrip(
      name: 'KnownPayload.comment round-trips',
      value: knownPayloadCommentFixture(),
      toJson: (value) => value.toJson(),
      fromJson: KnownPayload.fromJson,
      validateJson: (json) => expect(json['type'], 'comment'),
    );

    testMapRoundTrip(
      name: 'KnownPayload.tokenOutgoingTransfer round-trips',
      value: KnownPayload.tokenOutgoingTransfer(tokenOutgoingTransferFixture()),
      toJson: (value) => value.toJson(),
      fromJson: KnownPayload.fromJson,
      validateJson: (json) => expect(json['type'], 'token_outgoing_transfer'),
    );

    testMapRoundTrip(
      name: 'KnownPayload.jettonOutgoingTransfer round-trips',
      value: KnownPayload.jettonOutgoingTransfer(
        jettonOutgoingTransferFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: KnownPayload.fromJson,
      validateJson: (json) => expect(json['type'], 'jetton_outgoing_transfer'),
    );

    testMapRoundTrip(
      name: 'KnownPayload.tokenSwapBack round-trips',
      value: KnownPayload.tokenSwapBack(tokenSwapBackFixture()),
      toJson: (value) => value.toJson(),
      fromJson: KnownPayload.fromJson,
      validateJson: (json) => expect(json['type'], 'token_swap_back'),
    );

    testMapRoundTrip(
      name: 'MultisigConfirmTransaction round-trips',
      value: multisigConfirmTransactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: MultisigConfirmTransaction.fromJson,
    );

    testMapRoundTrip(
      name: 'MultisigPendingTransaction round-trips',
      value: multisigPendingTransactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: MultisigPendingTransaction.fromJson,
      validateJson: (json) =>
          expect(json.containsKey('signs_required'), isTrue),
    );

    testMapRoundTrip(
      name: 'MultisigSendTransaction round-trips',
      value: multisigSendTransactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: MultisigSendTransaction.fromJson,
    );

    testMapRoundTrip(
      name: 'MultisigSubmitTransaction round-trips',
      value: multisigSubmitTransactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: MultisigSubmitTransaction.fromJson,
    );

    testMapRoundTrip(
      name: 'MultisigTransaction.send round-trips',
      value: MultisigTransaction.send(multisigSendTransactionFixture()),
      toJson: (value) => value.toJson(),
      fromJson: MultisigTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'send'),
    );

    testMapRoundTrip(
      name: 'MultisigTransaction.submit round-trips',
      value: MultisigTransaction.submit(multisigSubmitTransactionFixture()),
      toJson: (value) => value.toJson(),
      fromJson: MultisigTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'submit'),
    );

    testMapRoundTrip(
      name: 'MultisigTransaction.confirm round-trips',
      value: MultisigTransaction.confirm(multisigConfirmTransactionFixture()),
      toJson: (value) => value.toJson(),
      fromJson: MultisigTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'confirm'),
    );

    testMapRoundTrip(
      name: 'TokenWalletDeployedNotification round-trips',
      value: tokenWalletDeployedFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletDeployedNotification.fromJson,
    );

    testMapRoundTrip(
      name: 'TonWalletDetails round-trips',
      value: tonWalletDetailsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TonWalletDetails.fromJson,
      validateJson: (json) =>
          expect(json.containsKey('requires_separate_deploy'), isTrue),
    );

    testMapRoundTrip(
      name: 'TonWalletTransactionWithData round-trips',
      value: tonWalletTransactionWithDataFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TonWalletTransactionWithData.fromJson,
    );

    testMapRoundTrip(
      name: 'TonWalletTransferParams round-trips',
      value: tonWalletTransferParamsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TonWalletTransferParams.fromJson,
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.comment round-trips',
      value: transactionAdditionalInfoCommentFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'comment'),
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.dePoolOnRoundComplete round-trips',
      value: TransactionAdditionalInfo.dePoolOnRoundComplete(
        dePoolOnRoundCompleteFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'de_pool_on_round_complete'),
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.dePoolReceiveAnswer round-trips',
      value: TransactionAdditionalInfo.dePoolReceiveAnswer(
        dePoolReceiveAnswerFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'de_pool_receive_answer'),
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.tokenWalletDeployed round-trips',
      value: TransactionAdditionalInfo.tokenWalletDeployed(
        tokenWalletDeployedFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'token_wallet_deployed'),
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.walletInteraction round-trips',
      value: TransactionAdditionalInfo.walletInteraction(
        walletInteractionInfoFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'wallet_interaction'),
    );

    testMapRoundTrip(
      name: 'TransactionAdditionalInfo.jettonNotify round-trips',
      value: TransactionAdditionalInfo.jettonNotify(
        jettonIncomingTransferFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionAdditionalInfo.fromJson,
      validateJson: (json) => expect(json['type'], 'jetton_notify'),
    );

    testMapRoundTrip(
      name: 'WalletInteractionInfo round-trips',
      value: walletInteractionInfoFixture(),
      toJson: (value) => value.toJson(),
      fromJson: WalletInteractionInfo.fromJson,
    );

    testMapRoundTrip(
      name: 'WalletInteractionMethod.walletV3Transfer round-trips',
      value: const WalletInteractionMethod.walletV3Transfer(),
      toJson: (value) => value.toJson(),
      fromJson: WalletInteractionMethod.fromJson,
      validateJson: (json) => expect(json['type'], 'wallet_v3_transfer'),
    );

    testMapRoundTrip(
      name: 'WalletInteractionMethod.tonWalletTransfer round-trips',
      value: const WalletInteractionMethod.tonWalletTransfer(),
      toJson: (value) => value.toJson(),
      fromJson: WalletInteractionMethod.fromJson,
      validateJson: (json) => expect(json['type'], 'ton_wallet_transfer'),
    );

    testMapRoundTrip(
      name: 'WalletInteractionMethod.multisig round-trips',
      value: walletInteractionMethodFixture(),
      toJson: (value) => value.toJson(),
      fromJson: WalletInteractionMethod.fromJson,
      validateJson: (json) => expect(json['type'], 'multisig'),
    );
  });
}
