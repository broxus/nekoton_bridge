import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:http/http.dart' as http;

import '../timeout_utils.dart';

Future<Uint8List> postTransportData({
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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkId = 1;
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/proto';

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
      post: postTransportData,
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
      networkId: networkId,
    );
    transport = await ProtoTransport.create(protoConnection: connection);
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

    testWidgets('GenericContract refresh', (WidgetTester tester) async {
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

    testWidgets(
      'GenericContract subscribing new instance after disposing old one',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        for (var i = 0; i < 10; i++) {
          final completer = Completer<void>();

          // if contract will not create instance for 5 seconds, then some bug here
          final delaying = Future.delayed(const Duration(seconds: 5), () {
            if (!completer.isCompleted) {
              throw Exception('Resubscribe timeout at $i iteration');
            }
          });

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
          completer.complete();

          await delaying;
        }
      },
    );
  });
}
