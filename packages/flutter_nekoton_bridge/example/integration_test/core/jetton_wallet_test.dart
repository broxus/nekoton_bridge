import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test_helpers.dart';
import '../timeout_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'TON';
  const networkGroup = 'ton';
  const endpoint = 'https://jrpc-ton.broxus.com';

  const address = Address(
      address:
          '0:2cf545d69ef7331c637cbcbaa358c7d58277a1b5713788736d62435dfa050ced');
  const hamsterTokenRoot = Address(
      address:
          '0:09f2e59dec406ab26a5259a45d7ff23ef11f3e5c7c21de0b0d2a1cbe52b76b3d');
  const tokenWallet = Address(
      address:
          '0:2932b05d620dd0520a66b1371e33b04ff4911886afef9b4b0a31f70560067469');

  const jrpcSettings = ProtoNetworkSettings(endpoint: endpoint);
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
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
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
        owner: address,
        rootTokenContract: hamsterTokenRoot,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, hamsterTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets('estimateMinAttachedAmount', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const destination = Address(
        address:
            '0:4ae0972605f7425d46fa368e588098aa087129fc1d91b3a5f47a18f8d45f10d3',
      );
      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: hamsterTokenRoot,
      );

      final amount = await wallet.estimateMinAttachedAmount(
        destination: destination,
      );

      expect(amount, isNotNull);
      expect(amount.isValidInt, isTrue);
    });

    testWidgets('prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: hamsterTokenRoot,
      );

      final message = await wallet.prepareTransfer(
        destination: hamsterTokenRoot,
        amount: BigInt.parse('10000'),
        callbackValue: BigInt.one,
        remainingGasTo: address,
      );

      expect(message, isNotNull);

      wallet.dispose();
    });

    testWidgets('getJettonWalletDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonWalletDetails(
        transport: transport,
        address: tokenWallet,
      );

      expect(details.$1.balance, isNot(BigInt.zero));
      expect(details.$1.ownerAddress, address);
      expect(details.$1.rootAddress, hamsterTokenRoot);
      expect(
        details.$2.adminAddress,
        const Address(
            address:
                '0:bbf13a702490ae3b853fde3849b8e7dc1b5f548807a9158753046496a4aed324'),
      );
    });

    testWidgets('getJettonRootDetailsFromJettonWallet',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetailsFromJettonWallet(
        transport: transport,
        address: tokenWallet,
      );

      expect(details.$1, hamsterTokenRoot);
      expect(
        details.$2.adminAddress,
        const Address(
            address:
                '0:bbf13a702490ae3b853fde3849b8e7dc1b5f548807a9158753046496a4aed324'),
      );
    });

    testWidgets('getJettonRootDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetails(
        transport: transport,
        tokenRoot: hamsterTokenRoot,
      );

      expect(
        details.adminAddress,
        const Address(
            address:
                '0:bbf13a702490ae3b853fde3849b8e7dc1b5f548807a9158753046496a4aed324'),
      );
    });

    testWidgets('refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: hamsterTokenRoot,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, hamsterTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, hamsterTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets(
      'subscribing new instance after disposing old one',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        for (var i = 0; i < 10; i++) {
          final wallet = await JettonWallet.subscribe(
            transport: transport,
            owner: address,
            rootTokenContract: hamsterTokenRoot,
          );

          expect(wallet, isNotNull);
          expect(wallet.owner, address);
          expect(wallet.tokenAddress, tokenWallet);
          expect(wallet.rootTokenContract, hamsterTokenRoot);
          expect(wallet.contractState.balance, isNot(BigInt.zero));

          wallet.dispose();
        }
      },
    );

    testWidgets('preloadTransactions: true', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: hamsterTokenRoot,
        preloadTransactions: true,
      );
      var events = 0;

      wallet.onTransactionsFoundStream.listen(
        (data) => events++,
      );

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
        owner: address,
        rootTokenContract: hamsterTokenRoot,
        preloadTransactions: false,
      );
      var events = 0;

      wallet.onTransactionsFoundStream.listen(
        (data) => events++,
      );

      expect(wallet, isNotNull);
      expect(wallet.isTransactionsPreloaded, false);
      await wallet.preloadTransactions();
      expect(events, 1);
      expect(wallet.isTransactionsPreloaded, true);

      wallet.dispose();
    });
  });
}
