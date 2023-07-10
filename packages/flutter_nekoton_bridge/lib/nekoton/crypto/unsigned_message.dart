import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Wrapper above nekoton's UnsignedMessage
class UnsignedMessage {

  UnsignedMessage._(this.message);
  late UnsignedMessageImpl message;

  /// Values that do not change
  late String hash;
  late int expireAt;

  /// Create wrapper for nekoton's UnsignedMessage with suitable returns values
  /// of some methods.
  static Future<UnsignedMessage> create({
    required UnsignedMessageImpl message,
  }) async {
    final instance = UnsignedMessage._(message);

    instance.hash = await message.hash();
    instance.expireAt = await message.expireAt();

    return instance;
  }

  Future<void> refreshTimeout() => message.refreshTimeout();

  /// Sign message with signature and return SignedMessage.
  /// signature receives from [KeyStore.sign] where data is [UnsignedMessage.hash]
  Future<SignedMessage> sign({required String signature}) async {
    final encoded = await message.sign(signature: signature);
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return SignedMessage.fromJson(decoded);
  }
}
