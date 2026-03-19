import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/not_existing_contract.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../model_round_trip_test_utils.dart';

void main() {
  setUpAll(setUpRoundTripBridgeMocks);

  group('core models round-trip', () {
    testScalarRoundTrip<Address>(
      name: 'Address round-trips through its scalar JSON form',
      value: rawAddress('a'),
      toJson: (value) => value.toJson(),
      fromJson: (json) => Address.fromJson(json! as String),
      validateJson: (json) => expect(json, rawAddress('a').address),
    );

    testScalarRoundTrip<PublicKey>(
      name: 'PublicKey round-trips through its scalar JSON form',
      value: rawPublicKey('b'),
      toJson: (value) => value.toJson(),
      fromJson: (json) => PublicKey.fromJson(json! as String),
    );

    testMapRoundTrip(
      name: 'AccountsList round-trips',
      value: const AccountsList(accounts: ['0:account'], continuation: 'next'),
      toJson: (value) => value.toJson(),
      fromJson: AccountsList.fromJson,
    );

    testMapRoundTrip(
      name: 'BlockchainConfig round-trips',
      value: const BlockchainConfig(
        capabilities: 1,
        globalId: 2,
        globalVersion: 3,
        config: 'Y29uZmln',
      ),
      toJson: (value) => value.toJson(),
      fromJson: BlockchainConfig.fromJson,
    );

    testMapRoundTrip(
      name: 'ContractState round-trips',
      value: contractStateFixture(),
      toJson: (value) => value.toJson(),
      fromJson: ContractState.fromJson,
    );

    testMapRoundTrip(
      name: 'ExistingContract round-trips',
      value: existingContractFixture(),
      toJson: (value) => value.toJson(),
      fromJson: ExistingContract.fromJson,
    );

    testMapRoundTrip(
      name: 'Expiration.never round-trips',
      value: const Expiration.never(),
      toJson: (value) => value.toJson(),
      fromJson: Expiration.fromJson,
      validateJson: (json) => expect(json['type'], 'never'),
    );

    testMapRoundTrip(
      name: 'Expiration.timeout round-trips',
      value: const Expiration.timeout(60),
      toJson: (value) => value.toJson(),
      fromJson: Expiration.fromJson,
      validateJson: (json) => expect(json['type'], 'timeout'),
    );

    testMapRoundTrip(
      name: 'Expiration.timestamp round-trips',
      value: const Expiration.timestamp(120),
      toJson: (value) => value.toJson(),
      fromJson: Expiration.fromJson,
      validateJson: (json) => expect(json['type'], 'timestamp'),
    );

    testMapRoundTrip(
      name: 'FullContractState round-trips',
      value: FullContractState(
        balance: BigInt.from(201),
        genTimings: genTimingsFixture(),
        lastTransactionId: lastTransactionIdFixture(),
        isDeployed: true,
        codeHash: repeated('c'),
        boc: 'Ym9j',
      ),
      toJson: (value) => value.toJson(),
      fromJson: FullContractState.fromJson,
    );

    testMapRoundTrip(
      name: 'GenTimings round-trips',
      value: genTimingsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: GenTimings.fromJson,
    );

    testMapRoundTrip(
      name: 'InternalMessage round-trips',
      value: InternalMessage(
        source: rawAddress('d'),
        destination: rawAddress('e'),
        amount: BigInt.from(202),
        bounce: true,
        body: 'body',
      ),
      toJson: (value) => value.toJson(),
      fromJson: InternalMessage.fromJson,
    );

    testMapRoundTrip(
      name: 'LastTransactionId round-trips',
      value: lastTransactionIdFixture(),
      toJson: (value) => value.toJson(),
      fromJson: LastTransactionId.fromJson,
    );

    testMapRoundTrip(
      name: 'Message round-trips',
      value: messageFixture(),
      toJson: (value) => value.toJson(),
      fromJson: Message.fromJson,
    );

    testMapRoundTrip(
      name: 'NotExistingContract round-trips',
      value: NotExistingContract(timings: genTimingsFixture()),
      toJson: (value) => value.toJson(),
      fromJson: NotExistingContract.fromJson,
    );

    testMapRoundTrip(
      name: 'OnMessageExpiredPayload round-trips',
      value: OnMessageExpiredPayload(
        pendingTransaction: pendingTransactionFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: OnMessageExpiredPayload.fromJson,
      validateJson: (json) =>
          expect(json.containsKey('pending_transaction'), isTrue),
    );

    testMapRoundTrip(
      name: 'OnMessageSentPayload round-trips',
      value: OnMessageSentPayload(
        pendingTransaction: pendingTransactionFixture(),
        transaction: transactionFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: OnMessageSentPayload.fromJson,
      validateJson: (json) =>
          expect(json.containsKey('pending_transaction'), isTrue),
    );

    testMapRoundTrip(
      name: 'OnStateChangedPayload round-trips',
      value: OnStateChangedPayload(newState: contractStateFixture()),
      toJson: (value) => value.toJson(),
      fromJson: OnStateChangedPayload.fromJson,
      validateJson: (json) => expect(json.containsKey('new_state'), isTrue),
    );

    testMapRoundTrip(
      name: 'OnTransactionsFoundPayload round-trips',
      value: OnTransactionsFoundPayload(
        transactions: [transactionFixture()],
        batchInfo: transactionsBatchInfoFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: OnTransactionsFoundPayload.fromJson,
      validateJson: (json) => expect(json.containsKey('batch_info'), isTrue),
    );

    testMapRoundTrip(
      name: 'PendingTransaction round-trips',
      value: pendingTransactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: PendingTransaction.fromJson,
    );

    testMapRoundTrip(
      name: 'RawContractState.notExists round-trips',
      value: RawContractState.notExists(
        NotExistingContract(timings: genTimingsFixture()),
      ),
      toJson: (value) => value.toJson(),
      fromJson: RawContractState.fromJson,
      validateJson: (json) => expect(json['type'], 'notExists'),
    );

    testMapRoundTrip(
      name: 'RawContractState.exists round-trips',
      value: RawContractState.exists(existingContractFixture()),
      toJson: (value) => value.toJson(),
      fromJson: RawContractState.fromJson,
      validateJson: (json) => expect(json['type'], 'exists'),
    );

    testMapRoundTrip(
      name: 'RawTransaction round-trips',
      value: RawTransaction(hash: repeated('f'), data: transactionFixture()),
      toJson: (value) => value.toJson(),
      fromJson: RawTransaction.fromJson,
    );

    testMapRoundTrip(
      name: 'StorageFeeInfo round-trips',
      value: const StorageFeeInfo(
        storageFee: '1',
        storageFeeDebt: '2',
        accountStatus: 'active',
        freezeDueLimit: '3',
        deleteDueLimit: '4',
      ),
      toJson: (value) => value.toJson(),
      fromJson: StorageFeeInfo.fromJson,
    );

    testMapRoundTrip(
      name: 'SubscriptionHandlerMessage round-trips',
      value: const SubscriptionHandlerMessage(
        event: 'event',
        payload: 'payload',
      ),
      toJson: (value) => value.toJson(),
      fromJson: SubscriptionHandlerMessage.fromJson,
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.transfer round-trips',
      value: TokenWalletTransaction.transfer(jettonOutgoingTransferFixture()),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'transfer'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.internalTransfer round-trips',
      value: TokenWalletTransaction.internalTransfer(
        jettonIncomingTransferFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'internal_transfer'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.burnNotification round-trips',
      value: TokenWalletTransaction.burnNotification(
        jettonBurnNotificationFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'burn_notification'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.incomingTransfer round-trips',
      value: TokenWalletTransaction.incomingTransfer(
        tokenIncomingTransferFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'incoming_transfer'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.outgoingTransfer round-trips',
      value: TokenWalletTransaction.outgoingTransfer(
        tokenOutgoingTransferFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'outgoing_transfer'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.swapBack round-trips',
      value: TokenWalletTransaction.swapBack(tokenSwapBackFixture()),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'swap_back'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.accept round-trips',
      value: TokenWalletTransaction.accept(BigInt.from(10)),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'accept'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.transferBounced round-trips',
      value: TokenWalletTransaction.transferBounced(BigInt.from(11)),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'transfer_bounced'),
    );

    testMapRoundTrip(
      name: 'TokenWalletTransaction.swapBackBounced round-trips',
      value: TokenWalletTransaction.swapBackBounced(BigInt.from(12)),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletTransaction.fromJson,
      validateJson: (json) => expect(json['type'], 'swap_back_bounced'),
    );

    testMapRoundTrip(
      name: 'Transaction round-trips',
      value: transactionFixture(),
      toJson: (value) => value.toJson(),
      fromJson: Transaction.fromJson,
    );

    testMapRoundTrip(
      name: 'TransactionId round-trips',
      value: transactionIdFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TransactionId.fromJson,
    );

    test('TransactionWithData<TokenWalletTransaction?> round-trips', () {
      // Arrange
      final value = TransactionWithData<TokenWalletTransaction?>(
        transaction: transactionFixture(hashChar: 'g'),
        data: TokenWalletTransaction.accept(BigInt.from(13)),
      );
      final json = value.toJson((data) => data?.toJson());

      // Act
      final decoded = TransactionWithData<TokenWalletTransaction?>.fromJson(
        json,
        (json) => json != null
            ? TokenWalletTransaction.fromJson(json as Map<String, dynamic>)
            : null,
      );

      // Assert
      expect(decoded, value);
    });

    testMapRoundTrip(
      name: 'TransactionsBatchInfo round-trips',
      value: transactionsBatchInfoFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TransactionsBatchInfo.fromJson,
    );

    testMapRoundTrip(
      name: 'TransactionsList round-trips',
      value: TransactionsList(
        transactions: [transactionFixture(hashChar: 'h')],
        continuation: transactionIdFixture(lt: '11', hashChar: 'i'),
        info: transactionsBatchInfoFixture(),
      ),
      toJson: (value) => value.toJson(),
      fromJson: TransactionsList.fromJson,
    );
  });
}
