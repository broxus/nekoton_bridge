import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_create_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_create_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/ledger_key_create_input.dart';

abstract class CreateKeyInput {
  Map<String, dynamic> toJson();
}

extension CreateKeyInputToSigner on CreateKeyInput {
  String toSigner() {
    if (this is EncryptedKeyCreateInput) return kEncryptedKeySignerName;
    if (this is DerivedKeyCreateInput) return kDerivedKeySignerName;
    if (this is LedgerKeyCreateInput) return kLedgerKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
