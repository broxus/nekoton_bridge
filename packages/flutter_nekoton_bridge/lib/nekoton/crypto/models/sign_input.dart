import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class SignInput {
  Map<String, dynamic> toJson();
}

extension SignInputToSigner on SignInput {
  KeySigner toSigner() {
    if (this is EncryptedKeyPassword) return const KeySigner.encrypted();
    if (this is DerivedKeyPassword) return const KeySigner.derived();
    if (this is LedgerSignInput) return const KeySigner.ledger();
    throw UnsupportedError('Invalid signer');
  }
}
