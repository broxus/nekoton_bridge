import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_export_params.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_password.dart';

abstract class ExportKeyInput {
  Map<String, dynamic> toJson();
}

extension ExportKeyInputToSigner on ExportKeyInput {
  String toSigner() {
    if (this is EncryptedKeyPassword) return kEncryptedKeySignerName;
    if (this is DerivedKeyExportParams) return kDerivedKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
