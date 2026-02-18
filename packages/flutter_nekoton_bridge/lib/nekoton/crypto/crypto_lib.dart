import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter/foundation.dart';

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
  required PublicKey publicKey,
  required String data,
  required String signature,
  required SignatureContext signatureContext,
}) {
  // TODO(knightforce): remove temp logs
  debugPrint(
    '!!! SignatureContext Test verifySignature: '
    'globalId=${signatureContext.globalId}, '
    'signatureType=${signatureContext.signatureType}',
  );
  return ntVerifySignature(
    publicKey: publicKey.publicKey,
    data: data,
    signature: signature,
    signatureCtx: signatureContext,
  );
}
