import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:http/http.dart' as http;

import '../timeout_utils.dart';

class HttpClient implements JrpcConnectionHttpClient {
  @override
  Future<String> post({
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

  @override
  void dispose() {}
}

class GqlHttpClient implements GqlConnectionHttpClient {
  @override
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  }) =>
      Future.value(
          '{"data":{"get_lib":"te6ccuECDwEAA9EAABoAJAEkAS4CJgL+A5wEVAVSBkoGrgcsB1EHfAeiART/APSkE/S88sgLAQIBYgIDAvjQAdDTAwFxsI5IE18DgCDXIe1E0NMD+gD6QPpA0QTTHwGEDyGCEBeNRRm6AoIQe92X3roSsfL0gEDXIfoAMBKgQBMDyMsDWPoCAc8WAc8Wye1U4PpA+kAx+gAx9AH6ADH6AAExcPg6AtMfASCCEA+KfqW6joUwNFnbPOAzBAUCASANDgHyA9M/AQH6APpAIfpEMMAA8uFN7UTQ0wP6APpA+kDRUwnHBSRxsMAAIbHyrVIrxwVQCrHy4ElRFaEgwv/yr/gqVCWQcFRgBBMVA8jLA1j6AgHPFgHPFskhyMsBE/QAEvQAywDJIPkAcHTIywLKB8v/ydAE+kD0AfoAIAYC0CKCEBeNRRm6joQyWts84DQhghBZXwe8uo6EMQHbPOAyIIIQ7tI207qOLzABgEDXIdMD0e1E0NMD+gD6QPpA0TNRQscF8uBKQDMDyMsDWPoCAc8WAc8Wye1U4GwhghDTchWMutyED/LwCAkBmCDXCwCa10vAAQHAAbDysZEw4siCEBeNRRkByx9QCgHLP1AI+gIjzxYBzxYm+gJQB88WyciAGAHLBVAEzxZw+gJAY3dQA8trzMzJRTcHALQhkXKRceL4OSBuk4EkJ5Eg4iFulDGBKHORAeJQI6gToHOBA6Nw+DygAnD4NhKgAXD4NqBzgQQJghAJZgGAcPg3oLzysASAUPsAWAPIywNY+gIBzxYBzxbJ7VQD9O1E0NMD+gD6QPpA0SNysMAC8m0H0z8BAfoAUUGgBPpA+kBTuscF+CpUZOBwVGAEExUDyMsDWPoCAc8WAc8WySHIywET9AAS9ADLAMn5AHB0yMsCygfL/8nQUAzHBRux8uBKCfoAIZJfBOMNJtcLAcAAs5MwbDPjDVUCCgsMAfLtRNDTA/oA+kD6QNEG0z8BAfoA+kD0AdFRQaFSiMcF8uBJJsL/8q/IghB73ZfeAcsfWAHLPwH6AiHPFljPFsnIgBgBywUmzxZw+gIBcVjLaszJA/g5IG6UMIEWn95xgQLycPg4AXD4NqCBGndw+DagvPKwAoBQ+wADDABgyIIQc2LQnAHLHyUByz9QBPoCWM8WWM8WyciAEAHLBSTPFlj6AgFxWMtqzMmAEfsAAHpQVKH4L6BzgQQJghAJZgGAcPg3tgly+wLIgBABywVQBc8WcPoCcAHLaoIQ1TJ22wHLH1gByz/JgQCC+wBZACADyMsDWPoCAc8WAc8Wye1UACe/2BdqJoaYH9AH0gfSBomfwVIJhAAhvFCPaiaGmB/QB9IH0gaK+Bz+s3AU"},"errors":[]}');

  @override
  Future<String> get(String endpoint) async {
    final response = await http.get(Uri.parse(endpoint));
    return response.body;
  }

  @override
  void dispose() {}
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'TON';
  const networkGroup = 'ton';
  const endpoint = 'https://jrpc-ton.broxus.com';

  const address = Address(
      address:
          '0:6ca35273892588b4c5f4ae898dc1983eec9662dffebeacdbe82103a1d1dcac60');
  const usdtTokenRoot = Address(
      address:
          '0:b113a994b5024a16719f69139328eb759596c38a25f59028b146fecdc3621dfe');
  const tokenWallet = Address(
      address:
          '0:2de4b60d57c1b6de29557922139212ee44c2eac5c5fd0cef51c73611e27b1a00');

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);
  late JrpcTransport transport;
  late GqlConnection gqlConnection;

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

    final connection = await JrpcConnection.create(
      client: HttpClient(),
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
    );
    transport = await JrpcTransport.create(jrpcConnection: connection);
    gqlConnection = await GqlConnection.create(
      name: 'jetton-gql',
      group: 'jetton-gql',
      client: GqlHttpClient(),
      settings: const GqlNetworkSettings(
        endpoints: ['https://dton.io/graphql/graphql'],
        latencyDetectionInterval: 60000,
        maxLatency: 60000,
        endpointSelectionRetryCount: 5,
        local: false,
      ),
    );
  });

  tearDown(() async {
    await transport.dispose();
    gqlConnection.dispose();
  });

  group('JettonWallet test', () {
    testWidgets('JettonWallet subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, usdtTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets('JettonWallet estimateMinAttachedAmount',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const destination = Address(
        address:
            '0:4ae0972605f7425d46fa368e588098aa087129fc1d91b3a5f47a18f8d45f10d3',
      );
      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
      );

      final amount = await wallet.estimateMinAttachedAmount(
        destination: destination,
      );

      expect(amount, isNotNull);
      expect(amount.isValidInt, isTrue);
    });

    testWidgets('JettonWallet prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
      );

      final message = await wallet.prepareTransfer(
        destination: usdtTokenRoot,
        amount: BigInt.parse('10000'),
        callbackValue: BigInt.one,
        remainingGasTo: address,
      );

      expect(message, isNotNull);

      wallet.dispose();
    });

    testWidgets('JettonWallet getJettonWalletDetails',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonWalletDetails(
        transport: transport,
        gqlConnection: gqlConnection,
        address: tokenWallet,
      );

      expect(details.$1.balance, isNot(BigInt.zero));
      expect(details.$1.ownerAddress, address);
      expect(details.$1.rootAddress, usdtTokenRoot);
      expect(
        details.$2.adminAddress,
        const Address(
            address:
                '0:6440fe3c69410383963945173c4b11479bf0b9b4d7090e58777bda581c2f9998'),
      );
    });

    testWidgets('JettonWallet getTokenRootDetailsFromJettonWallet',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetailsFromJettonWallet(
        transport: transport,
        gqlConnection: gqlConnection,
        address: tokenWallet,
      );

      expect(details.$1, usdtTokenRoot);
      expect(
        details.$2.adminAddress,
        const Address(
            address:
                '0:6440fe3c69410383963945173c4b11479bf0b9b4d7090e58777bda581c2f9998'),
      );
    });

    testWidgets('JettonWallet getTokenRootDetails',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final details = await JettonWallet.getJettonRootDetails(
        transport: transport,
        tokenRoot: usdtTokenRoot,
      );

      expect(
        details.adminAddress,
        const Address(
            address:
                '0:6440fe3c69410383963945173c4b11479bf0b9b4d7090e58777bda581c2f9998'),
      );
    });

    testWidgets('JettonWallet refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
      );

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, usdtTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.owner, address);
      expect(wallet.tokenAddress, tokenWallet);
      expect(wallet.rootTokenContract, usdtTokenRoot);
      expect(wallet.contractState.balance, isNot(BigInt.zero));

      wallet.dispose();
    });

    testWidgets(
      'JettonWallet subscribing new instance after disposing old one',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        for (var i = 0; i < 10; i++) {
          final completer = Completer<void>();

          final wallet = await JettonWallet.subscribe(
            transport: transport,
            gqlConnection: gqlConnection,
            owner: address,
            rootTokenContract: usdtTokenRoot,
          );

          expect(wallet, isNotNull);
          expect(wallet.owner, address);
          expect(wallet.tokenAddress, tokenWallet);
          expect(wallet.rootTokenContract, usdtTokenRoot);
          expect(wallet.contractState.balance, isNot(BigInt.zero));

          wallet.dispose();

          completer.complete();
        }
      },
    );

    testWidgets('JettonWallet preloadTransactions: true',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
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

    testWidgets('JettonWallet preloadTransactions: false',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await JettonWallet.subscribe(
        transport: transport,
        gqlConnection: gqlConnection,
        owner: address,
        rootTokenContract: usdtTokenRoot,
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
