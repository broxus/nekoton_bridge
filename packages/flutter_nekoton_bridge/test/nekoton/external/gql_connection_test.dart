import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockBridge extends Mock implements NekotonBridgeApi {}

class _MockArcGqlConnectionBoxTrait extends Mock
    implements ArcGqlConnectionBoxTrait {}

class _FakeGqlHttpClient implements GqlConnectionHttpClient {
  final List<String> postEndpoints = <String>[];
  final List<String> getEndpoints = <String>[];
  final List<Map<String, String>> postHeaders = <Map<String, String>>[];
  final Map<String, Future<String> Function()> getHandlers;
  final Future<String> Function({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  })
  postHandler;
  bool disposed = false;

  _FakeGqlHttpClient({required this.postHandler, this.getHandlers = const {}});

  @override
  Future<String> get(String endpoint) {
    getEndpoints.add(endpoint);
    final handler = getHandlers[endpoint];
    if (handler == null) throw StateError('Unexpected endpoint: $endpoint');
    return handler();
  }

  @override
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  }) {
    postEndpoints.add(endpoint);
    postHeaders.add(headers);
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
      () => bridge.crateApiMergedGqlConnectionDartWrapperNew(
        isLocal: any(named: 'isLocal'),
        onPost: any(named: 'onPost'),
      ),
    ).thenReturn(
      GqlConnectionDartWrapper.raw(
        innerConnection: _MockArcGqlConnectionBoxTrait(),
      ),
    );
  });

  test('post uses configured endpoint and json header', () async {
    // Arrange
    final client = _FakeGqlHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async {
            expect(endpoint, 'https://gql.example.com');
            expect(headers, {'Content-Type': 'application/json'});
            expect(data, '{"query":"{}"}');
            return 'response';
          },
    );
    final connection = GqlConnection.create(
      client: client,
      settings: const GqlNetworkSettings(
        endpoints: ['https://gql.example.com'],
        latencyDetectionInterval: 100,
        maxLatency: 100,
        endpointSelectionRetryCount: 1,
        local: false,
      ),
      name: 'gql',
      group: 'group',
    );

    // Act
    final result = await connection.post('{"query":"{}"}');

    // Assert
    expect(result, 'response');
  });

  test('post caches selected endpoint for multiple endpoints', () async {
    // Arrange
    const fastUrl =
        'https://fast.example.com?query=%7Binfo%7Bversion%20time%20latency%7D%7D';
    const slowUrl =
        'https://slow.example.com?query=%7Binfo%7Bversion%20time%20latency%7D%7D';
    final client = _FakeGqlHttpClient(
      getHandlers: {
        fastUrl: () async {
          await Future<void>.delayed(const Duration(milliseconds: 1));
          return jsonEncode({
            'data': {
              'info': {'latency': 1},
            },
          });
        },
        slowUrl: () async {
          await Future<void>.delayed(const Duration(milliseconds: 20));
          return jsonEncode({
            'data': {
              'info': {'latency': 50},
            },
          });
        },
      },
      postHandler:
          ({required endpoint, required headers, required data}) async =>
              endpoint,
    );
    final connection = GqlConnection.create(
      client: client,
      settings: const GqlNetworkSettings(
        endpoints: ['https://slow.example.com', 'https://fast.example.com'],
        latencyDetectionInterval: 100,
        maxLatency: 100,
        endpointSelectionRetryCount: 1,
        local: false,
      ),
      name: 'gql',
      group: 'group',
    );

    // Act
    final first = await connection.post('request-1');
    final second = await connection.post('request-2');

    // Assert
    expect(first, 'https://fast.example.com');
    expect(second, 'https://fast.example.com');
    expect(client.postEndpoints, [
      'https://fast.example.com',
      'https://fast.example.com',
    ]);
    expect(client.getEndpoints.length, 2);
  });

  test('post maps client failure to ErrorCode.network', () async {
    // Arrange
    final client = _FakeGqlHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async {
            throw Exception('network');
          },
    );
    final connection = GqlConnection.create(
      client: client,
      settings: const GqlNetworkSettings(
        endpoints: ['https://gql.example.com'],
        latencyDetectionInterval: 100,
        maxLatency: 100,
        endpointSelectionRetryCount: 1,
        local: false,
      ),
      name: 'gql',
      group: 'group',
    );

    // Act
    final call = connection.post('request');

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.network)));
  });

  test('dispose disposes client', () {
    // Arrange
    final client = _FakeGqlHttpClient(
      postHandler:
          ({required endpoint, required headers, required data}) async =>
              'response',
    );
    final connection = GqlConnection.create(
      client: client,
      settings: const GqlNetworkSettings(
        endpoints: ['https://gql.example.com'],
        latencyDetectionInterval: 100,
        maxLatency: 100,
        endpointSelectionRetryCount: 1,
        local: false,
      ),
      name: 'gql',
      group: 'group',
    );

    // Act
    connection.dispose();

    // Assert
    expect(client.disposed, isTrue);
  });
}
