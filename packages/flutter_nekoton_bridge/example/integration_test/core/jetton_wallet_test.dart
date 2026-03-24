import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test_helpers.dart';
import '../timeout_utils.dart';
import 'test_helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late ProtoTransport transport;

  setUp(() async {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());

    final connection = ProtoConnection.create(
      client: TestProtoClient(),
      settings: testJrpcSettings,
      name: 'Test connection',
      group: 'Test group',
    );
    transport = await ProtoTransport.create(protoConnection: connection);
  });

  setUpAll(() async {
    await NekotonBridge.init();
  });

  tearDown(() async {
    await transport.dispose();
  });

  group('JettonWallet', () {
    testWidgets('subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets('estimateMinAttachedAmount', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
      );

      final amount = await wallet.estimateMinAttachedAmount(
        destination: testWalletMsAddr,
      );

      expect(amount, isNotNull);
      expect(amount.isValidInt, isTrue);
    });

    testWidgets('prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
      );

      final message = await wallet.prepareTransfer(
        destination: testTokenRootAddr,
        amount: BigInt.parse('10000'),
        callbackValue: BigInt.one,
        remainingGasTo: testWalletAddr,
      );

      expect(message, isNotNull);

      wallet.dispose();
    });

    testWidgets('getJettonWalletDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonWalletDetails(
        transport: transport,
        address: testTokenWalletAddr,
      );

      expect(details.$1.balance, isNot(BigInt.zero));
      expect(details.$1.ownerAddress, testWalletAddr);
      expect(details.$1.rootAddress, testTokenRootAddr);
      expect(details.$2.adminAddress, testTokenRootOwner);
    });

    testWidgets('getJettonRootDetailsFromJettonWallet', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetailsFromJettonWallet(
        transport: transport,
        address: testTokenWalletAddr,
      );

      expect(details.$1, testTokenRootAddr);
      expect(details.$2.adminAddress, testTokenRootOwner);
    });

    testWidgets('getJettonRootDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetails(
        transport: transport,
        tokenRoot: testTokenRootAddr,
      );

      expect(details.adminAddress, testTokenRootOwner);
    });

    testWidgets('refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets('subscribing new instance after disposing old one', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      for (var i = 0; i < 10; i++) {
        final wallet = await JettonWallet.subscribe(
          transport: transport,
          owner: testWalletAddr,
          rootTokenContract: testTokenRootAddr,
        );

        expect(wallet, isNotNull);
        expect(wallet.owner, testWalletAddr);
        expect(wallet.tokenAddress, testTokenWalletAddr);
        expect(wallet.rootTokenContract, testTokenRootAddr);
        expect(wallet.contractState.balance, isNot(BigInt.zero));

        wallet.dispose();
      }
    });

    testWidgets('preloadTransactions: true', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
        preloadTransactions: true,
      );
      var events = 0;

      wallet.onTransactionsFoundStream.listen((data) => events++);

      expect(wallet, isNotNull);
      expect(wallet.isTransactionsPreloaded, true);
      await wallet.preloadTransactions();
      expect(events, 2);

      wallet.dispose();
    });

    testWidgets('preloadTransactions: false', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: testWalletAddr,
        rootTokenContract: testTokenRootAddr,
        preloadTransactions: false,
      );
      var events = 0;

      wallet.onTransactionsFoundStream.listen((data) => events++);

      expect(wallet, isNotNull);
      expect(wallet.isTransactionsPreloaded, false);
      await wallet.preloadTransactions();
      expect(events, 1);
      expect(wallet.isTransactionsPreloaded, true);

      wallet.dispose();
    });
  });
}
