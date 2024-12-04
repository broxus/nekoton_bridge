import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:http/http.dart' as http;

import '../timeout_utils.dart';

class HttpClient implements ProtoConnectionHttpClient {
  @override
  Future<Uint8List> post({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  }) async {
    final response = await http.post(
      Uri.parse(endpoint),
      headers: headers,
      body: dataBytes,
    );

    return response.bodyBytes;
  }

  @override
  void dispose() {}
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/proto';

  const stEverRootContract = Address(
      address:
          '0:6d42d0bc4a6568120ea88bf642edb653d727cfbd35868c47877532de128e71f2');
  const address = Address(
      address:
          '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2');

  const jrpcSettings = ProtoNetworkSettings(endpoint: endpoint);
  late ProtoTransport transport;

  setUp(() async {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());

    await initRustToDartCaller();

    final connection = await ProtoConnection.create(
      client: HttpClient(),
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
    );
    transport = await ProtoTransport.create(protoConnection: connection);
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
        wallet.tokenAddress,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
      );
      expect(wallet.rootTokenContract, stEverRootContract);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
      expect(wallet.symbol.decimals, 9);
      expect(wallet.symbol.rootTokenContract, stEverRootContract);
      expect(wallet.symbol.name, 'STEVER');
      expect(wallet.version, TokenWalletVersion.tip3);
    });

    testWidgets('TokenWallet estimateMinAttachedAmount',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const destination = Address(
        address:
            '0:deaa615aad3828255ce6c4c5495a0590740f2ecdc187cfb434da8e4552cf8f3f',
      );
      const owner = Address(
        address:
            '0:f9f575258120bff21afd8c798a5c9e9a2ef0b251e11d9c85fbf43bec968a57c6',
      );
      // USDT token root
      const rootTokenContract = Address(
        address:
            '0:a519f99bb5d6d51ef958ed24d337ad75a1c770885dcd42d51d6663f9fcdacfb2',
      );
      final wallet = await TokenWallet.subscribe(
        transport: transport,
        owner: owner,
        rootTokenContract: rootTokenContract,
      );

      final amount = await wallet.estimateMinAttachedAmount(
        destination: destination,
        amount: BigInt.parse('10000'),
      );

      expect(amount, isNotNull);
      expect(amount.isValidInt, isTrue);
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
        amount: BigInt.parse('1000000000'),
      );
      final message2 = await wallet.prepareTransfer(
        destination: stEverRootContract,
        amount: BigInt.parse('100000000'),
        attachedAmount: BigInt.parse('100000000'),
      );

      expect(message1, isNotNull);
      expect(message1.amount, BigInt.parse('500000000'));

      expect(message2, isNotNull);
      expect(message2.amount, BigInt.parse('200000000'));
    });

    testWidgets('TokenWallet getTokenWalletDetails',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenWalletDetails(
        transport: transport,
        address: const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
      );

      expect(details.item1.balance, BigInt.parse('1826241428'));
      expect(details.item1.ownerAddress, address);
      expect(details.item1.rootAddress, stEverRootContract);
      expect(
        details.item2.ownerAddress,
        const Address(
            address:
                '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68'),
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
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
      );

      expect(details.item1, stEverRootContract);
      expect(
        details.item2.ownerAddress,
        const Address(
            address:
                '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68'),
      );
      expect(details.item2.version, TokenWalletVersion.tip3);
      expect(details.item2.symbol, 'STEVER');
    });

    testWidgets('TokenWallet getTokenRootDetails', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await TokenWallet.getTokenRootDetails(
        transport: transport,
        tokenRoot: const Address(
            address:
                '0:09c0dda26e4e3f3a80a5a730e86bed8a557d3aaa1bf8e40be0e48ac544307477'),
      );

      expect(
        details.ownerAddress,
        const Address(
            address:
                '0:f9f575258120bff21afd8c798a5c9e9a2ef0b251e11d9c85fbf43bec968a57c6'),
      );
      expect(details.version, TokenWalletVersion.tip3);
      expect(details.symbol, 'TEST');
      expect(details.decimals, 9);
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
        wallet.tokenAddress,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
      );
      expect(wallet.rootTokenContract, stEverRootContract);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
      expect(wallet.symbol.decimals, 9);
      expect(wallet.symbol.rootTokenContract, stEverRootContract);
      expect(wallet.symbol.name, 'STEVER');
      expect(wallet.version, TokenWalletVersion.tip3);
      expect(wallet.rootTokenContract, stEverRootContract);

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(
        wallet.tokenAddress,
        const Address(
            address:
                '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
      );
      expect(wallet.rootTokenContract, stEverRootContract);
      expect(wallet.contractState.balance, BigInt.parse('100000000'));
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
            wallet.tokenAddress,
            const Address(
                address:
                    '0:ecfb1d0edbcbe0409763fa8ad8ad7f2727749f6cf29e0e6bcba9fdc752d3ae01'),
          );
          expect(wallet.rootTokenContract, stEverRootContract);
          expect(wallet.contractState.balance, BigInt.parse('100000000'));
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

    testWidgets(
      'TokenWallet Currency creation',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        final wallet = await TokenWallet.subscribe(
          transport: transport,
          owner: address,
          rootTokenContract: stEverRootContract,
        );

        expect(wallet.symbol.name, 'STEVER');
        expect(wallet.currency.isoCode, 'STEVER');
        expect(wallet.currency.symbol, 'STEVER');
        expect(Currencies().find('STEVER'), isNotNull);

        expect(wallet.moneyBalance.currency.isoCode, 'STEVER');
      },
    );
  });
}
