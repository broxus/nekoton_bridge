import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:http/http.dart' as http;

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

  const address =
      '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2';

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);
  late JrpcTransport transport;

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
      post: postTransportData,
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
      networkId: networkId,
    );
    transport = await JrpcTransport.create(jrpcConnection: connection);
  });

  group('GenericContract test', () {
    testWidgets('GenericContract subscribe', (WidgetTester tester) async {
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
  });
}
