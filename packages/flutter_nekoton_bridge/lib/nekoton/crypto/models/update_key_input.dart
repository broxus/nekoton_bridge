import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class UpdateKeyInput {
  Map<String, dynamic> toJson();
}

extension UpdateKeyInputToSigner on UpdateKeyInput {
  KeySigner toSigner() {
    if (this is EncryptedKeyUpdateParams) return const KeySigner.encrypted();
    if (this is DerivedKeyUpdateParams) return const KeySigner.derived();
    if (this is LedgerUpdateKeyInput) return const KeySigner.ledger();
    throw UnsupportedError('Invalid signer');
  }
}
