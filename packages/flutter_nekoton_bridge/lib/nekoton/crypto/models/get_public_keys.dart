import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class GetPublicKeys {
  Map<String, dynamic> toJson();
}

extension GetPublicKeysToSigner on GetPublicKeys {
  KeySigner toSigner() {
    if (this is EncryptedKeyGetPublicKeys) return const KeySigner.encrypted();
    if (this is DerivedKeyGetPublicKeys) return const KeySigner.derived();
    if (this is LedgerKeyGetPublicKeys) return const KeySigner.ledger();
    throw UnsupportedError('Invalid signer');
  }
}
