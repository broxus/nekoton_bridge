import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test_helpers.dart';
import '../timeout_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/proto';

  const address = Address(
    address:
        '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2',
  );

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

  group('GenericContract', () {
    testWidgets('subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final contract = await GenericContract.subscribe(
        transport: transport,
        address: address,
        preloadTransactions: true,
      );

      expect(contract, isNotNull);
      expect(contract.address, address);
      expect(contract.contractState.balance, isNot(BigInt.parse('0')));
      expect(contract.contractState.isDeployed, isTrue);
    });

    testWidgets('refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final contract = await GenericContract.subscribe(
        transport: transport,
        address: address,
        preloadTransactions: true,
      );

      expect(contract, isNotNull);
      expect(contract.address, address);
      expect(contract.contractState.balance, isNot(BigInt.parse('0')));
      expect(contract.contractState.isDeployed, isTrue);

      final fut = expectLater(contract.fieldUpdatesStream, emits(null));
      await contract.refresh();
      await fut;

      expect(contract, isNotNull);
      expect(contract.address, address);
      expect(contract.contractState.balance, isNot(BigInt.parse('0')));
      expect(contract.contractState.isDeployed, isTrue);
    });

    testWidgets('subscribing new instance after disposing old one', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      for (var i = 0; i < 10; i++) {
        final contract = await GenericContract.subscribe(
          transport: transport,
          address: address,
          preloadTransactions: true,
        );

        expect(contract, isNotNull);
        expect(contract.address, address);
        expect(contract.contractState.balance, isNot(BigInt.parse('0')));
        expect(contract.contractState.isDeployed, isTrue);

        contract.dispose();
      }
    });
  });
}
