import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Wrapper above nekoton's UnsignedMessage
class UnsignedMessage {
  late UnsignedMessageImpl message;

  /// Values that do not change
  late String hash;
  late DateTime expireAt;

  UnsignedMessage._(this.message);

  /// Create wrapper for nekoton's UnsignedMessage with suitable returns values
  /// of some methods.
  static Future<UnsignedMessage> create({
    required UnsignedMessageImpl message,
  }) async {
    final instance = UnsignedMessage._(message);

    instance.hash = await message.hash();
    instance.expireAt =
        dateSecondsSinceEpochJsonConverter.fromJson(await message.expireAt());

    return instance;
  }

  Future<void> refreshTimeout() async {
    final oldMessage = message;

    message = await message.refreshTimeout();
    hash = await message.hash();
    expireAt = dateSecondsSinceEpochJsonConverter.fromJson(
      await message.expireAt(),
    );

    oldMessage.innerMessage.dispose();
  }

  /// Sign message with signature and return SignedMessage.
  /// signature receives from [KeyStore.sign] where data is [UnsignedMessage.hash]
  Future<SignedMessage> sign({required String signature}) async {
    final encoded = await message.sign(signature: signature);
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return SignedMessage.fromJson(decoded);
  }

  /// Sign message without signature and return SignedMessage.
  Future<SignedMessage> signFake() async {
    final encoded = await message.signFake();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return SignedMessage.fromJson(decoded);
  }

  void dispose() {
    message.innerMessage.dispose();
  }
}
