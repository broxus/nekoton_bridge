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
    if (this is EncryptedKeyGetPublicKeys) return kEncryptedKeySignerName;
    if (this is DerivedKeyGetPublicKeys) return kDerivedKeySignerName;
    if (this is LedgerKeyGetPublicKeys) return kLedgerKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
