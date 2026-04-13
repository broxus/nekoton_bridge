import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:money2/money2.dart';

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

  group('TokenWallet', () {
    testWidgets('subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport);

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
      expect(wallet.symbol.decimals, 6);
      expect(wallet.symbol.rootTokenContract, testTokenRootAddr);
      expect(wallet.symbol.name, 'ttUSDT');
      expect(wallet.version, TokenWalletVersion.tip3);

      wallet.dispose();
    });

    testWidgets('estimateMinAttachedAmount', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport);
      final amount = await wallet.estimateMinAttachedAmount(
        destination: testWalletMsAddr,
        amount: BigInt.parse('10000'),
      );

      expect(amount, isNotNull);
      expect(amount.isValidInt, isTrue);
    });

    testWidgets('prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport);
      final message1 = await wallet.prepareTransfer(
        destination: testTokenRootAddr,
        amount: BigInt.parse('1000000000'),
      );
      final message2 = await wallet.prepareTransfer(
        destination: testTokenRootAddr,
        amount: BigInt.parse('100000000'),
        attachedAmount: BigInt.parse('100000000'),
      );

      expect(message1, isNotNull);
      expect(message1.amount >= BigInt.parse('500000000'), isTrue);

      expect(message2, isNotNull);
      expect(message2.amount >= BigInt.parse('200000000'), isTrue);

      wallet.dispose();
    });

    testWidgets('getTokenWalletDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenWalletDetails(
        transport: transport,
        address: testTokenWalletAddr,
      );

      expect(details.$1.balance, BigInt.parse('9000000'));
      expect(details.$1.ownerAddress, testWalletAddr);
      expect(details.$1.rootAddress, testTokenRootAddr);
      expect(details.$2.ownerAddress, testTokenRootOwner);
      expect(details.$2.version, TokenWalletVersion.tip3);
      expect(details.$2.symbol, 'ttUSDT');
    });

    testWidgets('getTokenRootDetailsFromTokenWallet', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenRootDetailsFromTokenWallet(
        transport: transport,
        address: testTokenWalletAddr,
      );

      expect(details.$1, testTokenRootAddr);
      expect(details.$2.ownerAddress, testTokenRootOwner);
      expect(details.$2.version, TokenWalletVersion.tip3);
      expect(details.$2.symbol, 'ttUSDT');
    });

    testWidgets('getTokenRootDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenRootDetails(
        transport: transport,
        tokenRoot: testTokenRootAddr,
      );

      expect(details.ownerAddress, testTokenRootOwner);
      expect(details.version, TokenWalletVersion.tip3);
      expect(details.symbol, 'ttUSDT');
      expect(details.decimals, 6);
    });

    testWidgets('refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport);

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
      expect(wallet.symbol.decimals, 6);
      expect(wallet.symbol.rootTokenContract, testTokenRootAddr);
      expect(wallet.symbol.name, 'ttUSDT');
      expect(wallet.version, TokenWalletVersion.tip3);

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, testWalletAddr);
      expect(wallet.tokenAddress, testTokenWalletAddr);
      expect(wallet.rootTokenContract, testTokenRootAddr);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
      expect(wallet.symbol.decimals, 6);
      expect(wallet.symbol.rootTokenContract, testTokenRootAddr);
      expect(wallet.symbol.name, 'ttUSDT');
      expect(wallet.version, TokenWalletVersion.tip3);

      wallet.dispose();
    });

    testWidgets('subscribing new instance after disposing old one', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      for (var i = 0; i < 10; i++) {
        final wallet = await getTokenWallet(transport);

        expect(wallet, isNotNull);
        expect(wallet.owner, testWalletAddr);
        expect(wallet.tokenAddress, testTokenWalletAddr);
        expect(wallet.rootTokenContract, testTokenRootAddr);
        expect(wallet.contractState.balance, BigInt.parse('100000000'));
        expect(wallet.symbol.decimals, 6);
        expect(wallet.symbol.rootTokenContract, testTokenRootAddr);
        expect(wallet.symbol.name, 'ttUSDT');
        expect(wallet.version, TokenWalletVersion.tip3);

        wallet.dispose();
      }
    });

    testWidgets('Currency creation', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport);

      expect(wallet.symbol.name, 'ttUSDT');
      expect(wallet.currency.isoCode, 'ttUSDT');
      expect(wallet.currency.symbol, 'ttUSDT');
      expect(Currencies().find('ttUSDT'), isNotNull);

      expect(wallet.moneyBalance.currency.isoCode, 'ttUSDT');

      wallet.dispose();
    });

    testWidgets('preloadTransactions: true', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getTokenWallet(transport, preloadTransactions: true);

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

      final wallet = await getTokenWallet(
        transport,
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
