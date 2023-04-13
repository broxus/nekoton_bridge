import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

export 'unsigned_message.dart';
export 'constants.dart';
export 'derived_key/derived_key_lib.dart';
export 'encrypted_key/encrypted_key_lib.dart';
export 'ledger_key/ledger_key_lib.dart';
export 'mnemonic/mnemonic.dart';
export 'models/models_lib.dart';
export 'password_cache/password_cache_lib.dart';

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
