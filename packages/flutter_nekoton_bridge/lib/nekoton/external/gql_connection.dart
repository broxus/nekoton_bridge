import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'gql_connection.reflectable.dart';

abstract interface class GqlConnectionHttpClient {
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  });

  Future<String> get(String endpoint);

  void dispose();
}

@reflector
class GqlConnection extends RustToDartMirrorInterface {
  late GqlConnectionDartWrapper connection;

  final GqlConnectionHttpClient _client;

  final String _name;
  final String _group;
  final GqlNetworkSettings settings;

  final type = TransportType.gql;

  String? _cachedEndpoint;

  GqlConnection._(
    this._client,
    this.settings,
    this._name,
    this._group,
  );

  static Future<GqlConnection> create({
    required GqlConnectionHttpClient client,
    required GqlNetworkSettings settings,
    required String name,
    required String group,
  }) async {
    final instance = GqlConnection._(client, settings, name, group);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodGqlConnectionDartWrapper(
      instanceHash: instance.instanceHash,
      isLocal: settings.local,
    );

    return instance;
  }

  String get name => _name;

  String get group => _group;

  /// Method to make post request. It's called from rust
  Future<String> post(String requestData) async {
    try {
      String endpoint;

      if (settings.endpoints.length == 1) {
        endpoint = settings.endpoints.first;
      } else {
        endpoint = await _getEndpoint();
      }

      return await _client.post(
        endpoint: endpoint,
        headers: {
          'Content-Type': 'application/json',
        },
        data: requestData,
      );
    } catch (error) {
      throw ErrorCode.Network;
    }
  }

  Future<String> _getEndpoint() async {
    if (_cachedEndpoint != null) return _cachedEndpoint!;

    _cachedEndpoint = await _selectQueryingEndpoint().timeout(
      Duration(milliseconds: settings.latencyDetectionInterval),
      onTimeout: () => throw ErrorCode.Network,
    );
    return _cachedEndpoint!;
  }

  Future<String> _selectQueryingEndpoint() async {
    final maxLatency = settings.maxLatency;
    final retryCount = settings.endpointSelectionRetryCount;
    final endpointsCount = settings.endpoints.length;

    for (var i = 0; i < retryCount; i++) {
      try {
        final completer = Completer<String>();

        var checkedEndpoints = 0;

        for (final e in settings.endpoints) {
          _checkLatency(e).whenComplete(() {
            checkedEndpoints++;
          }).then((v) {
            if (!completer.isCompleted) completer.complete(e);
          }).onError((err, st) {
            if (checkedEndpoints == endpointsCount && !completer.isCompleted) {
              completer.completeError(err!, st);
            }
          });
        }

        return await completer.future
            .timeout(Duration(milliseconds: maxLatency));
      } catch (err, st) {
        debugPrint(err.toString());
        debugPrint(st.toString());
      }
    }

    throw ErrorCode.Network;
  }

  Future<int> _checkLatency(String endpoint) async {
    final response = await _client.get(
      '$endpoint?query=%7Binfo%7Bversion%20time%20latency%7D%7D',
    );

    final json = jsonDecode(response) as Map<String, dynamic>;

    final data = json['data'] as Map<String, dynamic>;
    final info = data['info'] as Map<String, dynamic>;
    final latency = info['latency'] as int;

    return latency;
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
