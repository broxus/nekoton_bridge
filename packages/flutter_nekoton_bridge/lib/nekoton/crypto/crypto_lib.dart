import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

export 'mnemonic.dart';
export 'models/keypair.dart';

/// Check signature by publicKey and data hash
Future<bool> verifySignature({
  required String publicKey,
  required String dataHash,
  required String signature,
}) {
  return createLib().verifySignature(
    publicKey: publicKey,
    dataHash: dataHash,
    signature: signature,
  );
}
