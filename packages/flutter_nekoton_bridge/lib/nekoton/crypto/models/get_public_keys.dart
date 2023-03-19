import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_get_public_keys.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_get_public_keys.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/ledger_key_get_public_keys.dart';

abstract class GetPublicKeys {
  Map<String, dynamic> toJson();
}

extension GetPublicKeysToSigner on GetPublicKeys {
  String toSigner() {
    if (this is EncryptedKeyGetPublicKeys) return encryptedKeySignerName;
    if (this is DerivedKeyGetPublicKeys) return derivedKeySignerName;
    if (this is LedgerKeyGetPublicKeys) return ledgerKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
