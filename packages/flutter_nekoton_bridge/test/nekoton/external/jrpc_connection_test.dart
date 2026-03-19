import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockBridge extends Mock implements NekotonBridgeApi {}

class _MockArcJrpcConnectionBoxTrait extends Mock
    implements ArcJrpcConnectionBoxTrait {}

class _FakeJrpcHttpClient implements JrpcConnectionHttpClient {
  final List<String> postEndpoints = <String>[];
  final List<Map<String, String>> headersList = <Map<String, String>>[];
  final Future<String> Function({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  })
  postHandler;
  bool disposed = false;

  _FakeJrpcHttpClient({required this.postHandler});

  @override
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  }) {
    postEndpoints.add(endpoint);
    headersList.add(headers);
    return postHandler(endpoint: endpoint, headers: headers, data: data);
  }

  @override
  void dispose() {
    disposed = true;
  }
}

void main() {
  setUpAll(() {
    final bridge = _MockBridge();
    NekotonBridge.initMock(api: bridge);

    when(
      () => bridge.crateApiMergedJrpcConnectionDartWrapperNew(
        onPost: any(named: 'onPost'),
      ),
    ).thenReturn(
      JrpcConnectionDartWrapper.raw(
        innerConnection: _MockArcJrpcConnectionBoxTrait(),
      ),
    );
  });

  test('post forwards endpoint and json header', () async {
    // Arrange
    final client = _FakeJrpcHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async {
            expect(endpoint, 'https://jrpc.example.com');
            expect(headers, {'Content-Type': 'application/json'});
            expect(data, 'payload');
            return 'response';
          },
    );
    final connection = JrpcConnection.create(
      client: client,
      settings: const JrpcNetworkSettings(endpoint: 'https://jrpc.example.com'),
      name: 'jrpc',
      group: 'group',
    );

    // Act
    final result = await connection.post('payload');

    // Assert
    expect(result, 'response');
  });

  test('post maps client failure to ErrorCode.network', () async {
    // Arrange
    final client = _FakeJrpcHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async {
            throw Exception('network');
          },
    );
    final connection = JrpcConnection.create(
      client: client,
      settings: const JrpcNetworkSettings(endpoint: 'https://jrpc.example.com'),
      name: 'jrpc',
      group: 'group',
    );

    // Act
    final call = connection.post('payload');

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.network)));
  });

  test('dispose disposes client', () {
    // Arrange
    final client = _FakeJrpcHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async =>
              'response',
    );
    final connection = JrpcConnection.create(
      client: client,
      settings: const JrpcNetworkSettings(endpoint: 'https://jrpc.example.com'),
      name: 'jrpc',
      group: 'group',
    );

    // Act
    connection.dispose();

    // Assert
    expect(client.disposed, isTrue);
  });
}
