import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockBridge extends Mock implements NekotonBridgeApi {}

class _MockArcProtoConnectionBoxTrait extends Mock
    implements ArcProtoConnectionBoxTrait {}

class _FakeProtoHttpClient implements ProtoConnectionHttpClient {
  final List<String> postEndpoints = <String>[];
  final List<Map<String, String>> headersList = <Map<String, String>>[];
  final Future<Uint8List> Function({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  })
  postHandler;
  bool disposed = false;

  _FakeProtoHttpClient({required this.postHandler});

  @override
  Future<Uint8List> post({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  }) {
    postEndpoints.add(endpoint);
    headersList.add(headers);
    return postHandler(
      endpoint: endpoint,
      headers: headers,
      dataBytes: dataBytes,
    );
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
      () => bridge.crateApiMergedProtoConnectionDartWrapperNew(
        onPost: any(named: 'onPost'),
      ),
    ).thenReturn(
      ProtoConnectionDartWrapper.raw(
        innerConnection: _MockArcProtoConnectionBoxTrait(),
      ),
    );
  });

  test('post forwards endpoint, protobuf header, and bytes', () async {
    // Arrange
    final request = Uint8List.fromList(<int>[1, 2, 3]);
    final response = Uint8List.fromList(<int>[4, 5, 6]);
    final client = _FakeProtoHttpClient(
      postHandler:
          ({required endpoint, required headers, required dataBytes}) async {
            expect(endpoint, 'https://proto.example.com');
            expect(headers, {'Content-Type': 'application/x-protobuf'});
            expect(dataBytes, request);
            return response;
          },
    );
    final connection = ProtoConnection.create(
      client: client,
      settings: const ProtoNetworkSettings(
        endpoint: 'https://proto.example.com',
      ),
      name: 'proto',
      group: 'group',
    );

    // Act
    final result = await connection.post(request);

    // Assert
    expect(result, response);
  });

  test('post maps client failure to ErrorCode.network', () async {
    // Arrange
    final client = _FakeProtoHttpClient(
      postHandler:
          ({required endpoint, required headers, required dataBytes}) async {
            throw Exception('network');
          },
    );
    final connection = ProtoConnection.create(
      client: client,
      settings: const ProtoNetworkSettings(
        endpoint: 'https://proto.example.com',
      ),
      name: 'proto',
      group: 'group',
    );

    // Act
    final call = connection.post(Uint8List.fromList(<int>[1]));

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.network)));
  });

  test('dispose disposes client', () {
    // Arrange
    final client = _FakeProtoHttpClient(
      postHandler:
          ({required endpoint, required headers, required dataBytes}) async =>
              Uint8List(0),
    );
    final connection = ProtoConnection.create(
      client: client,
      settings: const ProtoNetworkSettings(
        endpoint: 'https://proto.example.com',
      ),
      name: 'proto',
      group: 'group',
    );

    // Act
    connection.dispose();

    // Assert
    expect(client.disposed, isTrue);
  });
}
