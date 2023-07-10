import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/nekoton/external/gql_connection.reflectable.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';

typedef GqlConnectionPost = Future<String> Function({
  required String endpoint,
  required Map<String, String> headers,
  required String data,
});

typedef GqlConnectionGet = Future<String> Function(String endpoint);

@reflector
class GqlConnection extends RustToDartMirrorInterface {

  GqlConnection._(
    this._post,
    this._get,
    this._settings,
    this._name,
    this._group,
    this._networkId,
  );
  late GqlConnectionDartWrapper connection;

  final GqlConnectionPost _post;
  final GqlConnectionGet _get;

  final String _name;
  final int _networkId;
  final String _group;
  final GqlNetworkSettings _settings;

  final type = TransportType.gql;

  String? _cachedEndpoint;

  static Future<GqlConnection> create({
    required GqlConnectionPost post,
    required GqlConnectionGet get,
    required GqlNetworkSettings settings,
    required String name,
    required String group,
    required int networkId,
  }) async {
    final instance =
        GqlConnection._(post, get, settings, name, group, networkId);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodGqlConnectionDartWrapper(
      instanceHash: instance.instanceHash,
      isLocal: settings.local,
    );

    return instance;
  }

  String get name => _name;

  int get networkId => _networkId;

  String get group => _group;

  /// Method to make post request. It's called from rust
  Future<String> post(String requestData) async {
    try {
      String endpoint;

      if (_settings.endpoints.length == 1) {
        endpoint = _settings.endpoints.first;
      } else {
        endpoint = await _getEndpoint();
      }

      return await _post(
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
      Duration(milliseconds: _settings.latencyDetectionInterval),
      onTimeout: () => throw ErrorCode.Network,
    );
    return _cachedEndpoint!;
  }

  Future<String> _selectQueryingEndpoint() async {
    final maxLatency = _settings.maxLatency;
    final retryCount = _settings.endpointSelectionRetryCount;
    final endpointsCount = _settings.endpoints.length;

    for (var i = 0; i < retryCount; i++) {
      try {
        final completer = Completer<String>();

        var checkedEndpoints = 0;

        for (final e in _settings.endpoints) {
          await _checkLatency(e).whenComplete(() {
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
    final response =
        await _get('$endpoint?query=%7Binfo%7Bversion%20time%20latency%7D%7D');

    final json = jsonDecode(response) as Map<String, dynamic>;

    final data = json['data'] as Map<String, dynamic>;
    final info = data['info'] as Map<String, dynamic>;
    final latency = info['latency'] as int;

    return latency;
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
