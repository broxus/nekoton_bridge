import 'package:flutter/cupertino.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:http/http.dart' as http;

import '../timeout_utils.dart';
import 'contract_abi.dart';

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

  const name = 'Mainnet (JRPC)';
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/rpc';

  /// System account address
  const accountAddress = Address(
      address:
          '-1:0000000000000000000000000000000000000000000000000000000000000000');
  const accountTransaction =
      'd0a278d82e699a63adeaede7e602ff6da8168c333ceb4f2344f42cb739c28940';

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);

  setUp(() {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());
  });

  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  group('JrpcTransport tests', () {
    testWidgets('Create JrpcTransport', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      expect(transport.transport, isNotNull);
    });

    testWidgets('JrpcTransport getSignatureId ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final signature = await transport.getSignatureId();

      expect(signature, isNull);
    });

    testWidgets('JrpcTransport getSignatureId venom ',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();
      const venomEndpoint = 'https://jrpc-testnet.venom.foundation/rpc';

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: const JrpcNetworkSettings(endpoint: venomEndpoint),
        name: 'Testnet Venom',
        group: 'testnet',
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final signature = await transport.getSignatureId();

      expect(signature, 1000);
    });

    testWidgets('JrpcTransport getTransactions ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final transactions = await transport.getTransactions(
        address: accountAddress,
        count: 10,
      );

      expect(transactions.transactions.length, 10);
    });

    testWidgets('JrpcTransport getTransaction ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final transaction = await transport.getTransaction(accountTransaction);

      expect(transaction, isNotNull);
      expect(transaction!.id.hash, accountTransaction);
      expect(transaction.aborted, false);
      expect(transaction.inMessage.value, BigInt.parse('100000000'));
      expect(transaction.outMessages.length, 0);
    });

    testWidgets('JrpcTransport getDstTransaction', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      const hash =
          '248ddcef0742827eaa2c25eeb1daa3c94c61dc286c6066f4e7508dcbeb4fa038';
      const childHash =
          '1e5592bdb0ef90036be2456cdac36481ab9cb4e2699c0f51036e282c4a798d63';
      final raw = await transport.getDstTransaction(hash);
      final transaction = raw!.data;

      expect(transaction, isNotNull);
      expect(raw.hash, hash);
      expect(transaction.id.hash, childHash);
      expect(transaction.aborted, false);
      expect(transaction.inMessage.value, BigInt.parse('910000000'));
      expect(transaction.outMessages.length, 1);
    });

    testWidgets('JrpcTransport multiple calls ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      expect(
        await transport.getTransaction(accountTransaction),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            'f90074116294f0a4295d7ab368af8a1cc75654aad557d3ffd6edb7e8b2020c39'),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            '74773423c867ce433d39612f8c14c49e835500263ced3e045ca560c4383ea6fc'),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            '5c229b34601836743083acf9fd87f164039b75ac7b513b756a06da0e7051fffd'),
        isNotNull,
      );
    });

    testWidgets('JrpcTransport getContractState ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final state = await transport.getContractState(accountAddress);

      expect(state, isNotNull);
      expect(
        state.when(notExists: (_) => null, exists: (e) => e),
        isNotNull,
      );
    });

    testWidgets('JrpcTransport getFullContractState ', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final state = await transport.getFullContractState(accountAddress);

      expect(state, isNotNull);
      expect(state!.boc.isNotEmpty, isTrue);
      expect(state.isDeployed, true);
    });

    testWidgets('JrpcTransport getContractFields', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final (fields, state) = await transport.getContractFields(
        address: const Address(
          address:
              '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68',
        ),
        contractAbi: contractAbi,
      );

      expect(fields, isNotNull);
      expect(fields!.length, 35);
      expect(state, isNotNull);
    });

    testWidgets('JrpcTransport getNetworkId ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final id = await transport.getNetworkId();
      expect(id, 42);
    });

    testWidgets('JrpcTransport getNetworkId venom ',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();
      const venomEndpoint = 'https://jrpc-testnet.venom.foundation/rpc';

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: const JrpcNetworkSettings(endpoint: venomEndpoint),
        name: 'Testnet Venom',
        group: 'testnet',
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final id = await transport.getNetworkId();
      expect(id, 1000);
    });

    testWidgets('JrpcTransport getBlockchainConfig ',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final connection = await JrpcConnection.create(
        post: postTransportData,
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final config = await transport.getBlockchainConfig();

      expect(config.config, isNotEmpty);
      expect(config.globalId, 42);
      expect(config.globalVersion, 32);
    });
  });
}
