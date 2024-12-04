import 'dart:async';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'jrpc_connection.reflectable.dart';

/// Interface for http client to make post requests.
abstract interface class JrpcConnectionHttpClient {
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  });

  void dispose();
}

@reflector
class JrpcConnection extends RustToDartMirrorInterface {
  late JrpcConnectionDartWrapper connection;

  final JrpcConnectionHttpClient _client;

  final String _name;
  final String _group;
  final JrpcNetworkSettings settings;

  final type = TransportType.gql;

  JrpcConnection._(
    this._client,
    this.settings,
    this._name,
    this._group,
  );

  static Future<JrpcConnection> create({
    required JrpcConnectionHttpClient client,
    required JrpcNetworkSettings settings,
    required String name,
    required String group,
  }) async {
    final instance = JrpcConnection._(client, settings, name, group);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodJrpcConnectionDartWrapper(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  String get name => _name;

  String get group => _group;

  /// Method to make post request. It's called from rust
  Future<String> post(String requestData) async {
    try {
      return await _client.post(
        endpoint: settings.endpoint,
        headers: {
          'Content-Type': 'application/json',
        },
        data: requestData,
      );
    } catch (error) {
      throw ErrorCode.Network;
    }
  }

  @override
  void dispose() {
    connection.innerConnection.dispose();
    _client.dispose();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
