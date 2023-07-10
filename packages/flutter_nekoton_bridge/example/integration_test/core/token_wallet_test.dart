import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';

import '../timeout_utils.dart';

Future<String> postTransportData({
  required String endpoint,
  required Map<String, String> headers,
  required String data,
}) async {
  final response = await http.post(
    Uri.parse(endpoint),
    headers: headers,
    body: data,
  );

  return response.body;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkId = 1;
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/rpc';

  const stEverRootContract = Address(
      address:
          '0:6d42d0bc4a6568120ea88bf642edb653d727cfbd35868c47877532de128e71f2',);
  const address = Address(
      address:
          '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2',);

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);
  late JrpcTransport transport;

  setUp(() async {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    await setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());

    await initRustToDartCaller();

    final connection = await JrpcConnection.create(
      post: postTransportData,
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
      networkId: networkId,
    );
    transport = await JrpcTransport.create(jrpcConnection: connection);
  });

  group('TokenWallet test', () {
    testWidgets('TokenWallet subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TokenWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: stEverRootContract,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(
        wallet.address,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
      );
      expect(wallet.contractState.balance, Fixed.parse('61294235'));
      expect(wallet.symbol.decimals, 9);
      expect(wallet.symbol.rootTokenContract, stEverRootContract);
      expect(wallet.symbol.name, 'STEVER');
      expect(wallet.version, TokenWalletVersion.tip3);
    });

    testWidgets('TokenWallet prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TokenWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: stEverRootContract,
      );

      final message1 = await wallet.prepareTransfer(
        destination: stEverRootContract,
        amount: Fixed.parse('1000000000'),
      );
      final message2 = await wallet.prepareTransfer(
        destination: stEverRootContract,
        amount: Fixed.parse('100000000'),
        attachedAmount: Fixed.parse('100000000'),
      );

      expect(message1, isNotNull);
      expect(message1.amount, Fixed.parse('500000000'));

      expect(message2, isNotNull);
      expect(message2.amount, Fixed.parse('200000000'));
    });

    testWidgets('TokenWallet getTokenWalletDetails',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenWalletDetails(
        transport: transport,
        address: const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
      );

      expect(details.item1.balance, Fixed.parse('0'));
      expect(details.item1.ownerAddress, address);
      expect(details.item1.rootAddress, stEverRootContract);
      expect(
        details.item2.ownerAddress,
        const Address(
            address:
                '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68',),
      );
      expect(details.item2.version, TokenWalletVersion.tip3);
      expect(details.item2.symbol, 'STEVER');
    });

    testWidgets('TokenWallet getTokenRootDetailsFromTokenWallet',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenRootDetailsFromTokenWallet(
        transport: transport,
        address: const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
      );

      expect(details.item1, stEverRootContract);
      expect(
        details.item2.ownerAddress,
        const Address(
            address:
                '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68',),
      );
      expect(details.item2.version, TokenWalletVersion.tip3);
      expect(details.item2.symbol, 'STEVER');
    });

    testWidgets('TokenWallet refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TokenWallet.subscribe(
        transport: transport,
        owner: address,
        rootTokenContract: stEverRootContract,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(
        wallet.address,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
      );
      expect(wallet.contractState.balance, Fixed.parse('61294235'));
      expect(wallet.symbol.decimals, 9);
      expect(wallet.symbol.rootTokenContract, stEverRootContract);
      expect(wallet.symbol.name, 'STEVER');
      expect(wallet.version, TokenWalletVersion.tip3);

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(
        wallet.address,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
      );
      expect(wallet.contractState.balance, Fixed.parse('61294235'));
      expect(wallet.symbol.decimals, 9);
      expect(wallet.symbol.rootTokenContract, stEverRootContract);
      expect(wallet.symbol.name, 'STEVER');
      expect(wallet.version, TokenWalletVersion.tip3);
    });

    testWidgets(
      'TokenWallet subscribing new instance after disposing old one',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        for (var i = 0; i < 10; i++) {
          final completer = Completer<void>();

          // if wallet will not create instance for 5 seconds, then some bug here
          final delaying = Future.delayed(const Duration(seconds: 5), () {
            if (!completer.isCompleted) {
              throw Exception('Resubscribe timeout at $i iteration');
            }
          });

          final wallet = await TokenWallet.subscribe(
            transport: transport,
            owner: address,
            rootTokenContract: stEverRootContract,
          );

          expect(wallet, isNotNull);
          expect(wallet.owner, address);
          expect(
            wallet.address,
            const Address(
                address:
                    '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01',),
          );
          expect(wallet.contractState.balance, Fixed.parse('61294235'));
          expect(wallet.symbol.decimals, 9);
          expect(wallet.symbol.rootTokenContract, stEverRootContract);
          expect(wallet.symbol.name, 'STEVER');
          expect(wallet.version, TokenWalletVersion.tip3);

          wallet.dispose();

          completer.complete();
          await delaying;
        }
      },
    );
  });
}
