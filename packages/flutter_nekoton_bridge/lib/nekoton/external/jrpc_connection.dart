import 'dart:async';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/nekoton/external/jrpc_connection.reflectable.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';

typedef JrpcConnectionPost = Future<String> Function({
  required String endpoint,
  required Map<String, String> headers,
  required String data,
});

@reflector
class JrpcConnection extends RustToDartMirrorInterface {

  JrpcConnection._(
    this._post,
    this._settings,
    this._name,
    this._group,
    this._networkId,
  );
  late JrpcConnectionDartWrapper connection;

  final JrpcConnectionPost _post;

  final String _name;
  final int _networkId;
  final String _group;
  final JrpcNetworkSettings _settings;

  final type = TransportType.gql;

  static Future<JrpcConnection> create({
    required JrpcConnectionPost post,
    required JrpcNetworkSettings settings,
    required String name,
    required String group,
    required int networkId,
  }) async {
    final instance = JrpcConnection._(post, settings, name, group, networkId);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodJrpcConnectionDartWrapper(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  String get name => _name;

  int get networkId => _networkId;

  String get group => _group;

  /// Method to make post request. It's called from rust
  Future<String> post(String requestData) async {
    try {
      return await _post(
        endpoint: _settings.endpoint,
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
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
