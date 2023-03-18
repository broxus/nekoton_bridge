import 'package:flutter/cupertino.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:http/http.dart' as http;

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

Future<String> getTransportData(String endpoint) async {
  final response = await http.get(Uri.parse(endpoint));

  return response.body;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkId = 1;
  const networkGroup = 'mainnet';
  const endpoint =
      'https://mainnet.evercloud.dev/89a3b8f46a484f2ea3bdd364ddaee3a3/graphql';

  const kDefaultLatencyDetectionInterval = 60000;

  const kDefaultMaxLatency = 60000;

  const kDefaultEndpointSelectionRetryCount = 5;

  setUp(() {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );
  });

  group('GqlTransport tests', () {
    testWidgets('Create GqlTransport', (
      WidgetTester tester,
    ) async {
      runApp(Container());

      await tester.pumpAndSettle();

      final connection = await GqlConnection.create(
        post: postTransportData,
        get: getTransportData,
        settings: const GqlNetworkSettings(
          endpoints: [endpoint],
          latencyDetectionInterval: kDefaultLatencyDetectionInterval,
          maxLatency: kDefaultMaxLatency,
          endpointSelectionRetryCount: kDefaultEndpointSelectionRetryCount,
          local: false,
        ),
        name: name,
        group: networkGroup,
        networkId: networkId,
      );
      final transport = await GqlTransport.create(gqlConnection: connection);

      expect(transport.transport, isNotNull);
    });
  });
}
