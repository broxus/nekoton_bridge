import 'dart:async';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Interface for http client to make post requests.
abstract interface class JrpcConnectionHttpClient {
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  });

  void dispose();
}

class JrpcConnection {
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

  static JrpcConnection create({
    required JrpcConnectionHttpClient client,
    required JrpcNetworkSettings settings,
    required String name,
    required String group,
  }) {
    final instance = JrpcConnection._(client, settings, name, group);

    instance.connection = JrpcConnectionDartWrapper(
      onPost: instance.post,
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
      throw ErrorCode.network;
    }
  }

  void dispose() {
    connection.innerConnection.dispose();
    _client.dispose();
  }
}
