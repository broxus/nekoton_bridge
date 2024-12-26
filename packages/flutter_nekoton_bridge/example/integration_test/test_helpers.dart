import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

const String _envStringSkipFlakyIOS = 'FLUTTER_TEST_SKIP_FLAKY_IOS';
const String _envStringSkipFlakyAndroid = 'FLUTTER_TEST_SKIP_FLAKY_ANDROID';

bool skipBecauseFlaky() {
  if (Platform.isIOS && const bool.fromEnvironment(_envStringSkipFlakyIOS)) {
    // ignore: avoid_print
    print('Skipping test because $_envStringSkipFlakyIOS is set');
    return true;
  }
  if (Platform.isAndroid &&
      const bool.fromEnvironment(_envStringSkipFlakyAndroid)) {
    // ignore: avoid_print
    print('Skipping test because $_envStringSkipFlakyAndroid is set');
    return true;
  }
  return false;
}

class TestProtoClient implements ProtoConnectionHttpClient {
  final Map<Uint8List, Uint8List> _cache = {};

  @override
  Future<Uint8List> post({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  }) async {
    if (_cache.containsKey(dataBytes)) {
      return _cache[dataBytes]!;
    }

    final response = await http.post(
      Uri.parse(endpoint),
      headers: headers,
      body: dataBytes,
    );

    _cache[dataBytes] = response.bodyBytes;

    return response.bodyBytes;
  }

  @override
  void dispose() {
    _cache.clear();
  }
}

class TestGqlClient implements GqlConnectionHttpClient {
  final Map<String, String> _cache = {};

  @override
  Future<String> post({
    required String endpoint,
    required Map<String, String> headers,
    required String data,
  }) async {
    if (_cache.containsKey(data)) {
      return _cache[data]!;
    }

    final response = await http.post(
      Uri.parse(endpoint),
      headers: headers,
      body: data,
    );

    _cache[data] = response.body;

    return response.body;
  }

  @override
  Future<String> get(String endpoint) async {
    final response = await http.get(Uri.parse(endpoint));
    return response.body;
  }

  @override
  void dispose() {
    _cache.clear();
  }
}
