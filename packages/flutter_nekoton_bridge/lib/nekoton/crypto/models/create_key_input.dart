import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class CreateKeyInput {
  Map<String, dynamic> toJson();
}

extension CreateKeyInputToSigner on CreateKeyInput {
  KeySigner toSigner() {
    if (this is EncryptedKeyCreateInput) return const KeySigner.encrypted();
    if (this is DerivedKeyCreateInput) return const KeySigner.derived();
    if (this is LedgerKeyCreateInput) return const KeySigner.ledger();
    throw UnsupportedError('Invalid signer');
  }
}
