import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class ExportKeyInput {
  Map<String, dynamic> toJson();
}

extension ExportKeyInputToSigner on ExportKeyInput {
  KeySigner toSigner() {
    if (this is EncryptedKeyPassword) return const KeySigner.encrypted();
    if (this is DerivedKeyExportSeedParams) return const KeySigner.derived();
    throw UnsupportedError('Invalid signer');
  }
}
