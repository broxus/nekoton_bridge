import 'dart:async';
import 'dart:typed_data';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'proto_connection.reflectable.dart';

/// Interface for http client to make post requests.
abstract interface class ProtoConnectionHttpClient {
  Future<Uint8List> post({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  });

  void dispose();
}

@reflector
class ProtoConnection extends RustToDartMirrorInterface {
  late ProtoConnectionDartWrapper connection;

  final ProtoConnectionHttpClient _client;

  final String _name;
  final String _group;
  final ProtoNetworkSettings settings;

  final type = TransportType.proto;

  ProtoConnection._(
    this._client,
    this.settings,
    this._name,
    this._group,
  );

  static Future<ProtoConnection> create({
    required ProtoConnectionHttpClient client,
    required ProtoNetworkSettings settings,
    required String name,
    required String group,
  }) async {
    final instance = ProtoConnection._(client, settings, name, group);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodProtoConnectionDartWrapper(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  String get name => _name;

  String get group => _group;

  /// Method to make post request. It's called from rust
  Future<Uint8List> post(Uint8List requestData) async {
    try {
      return await _client.post(
        endpoint: settings.endpoint,
        headers: {
          'Content-Type': 'application/x-protobuf',
        },
        dataBytes: requestData,
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
