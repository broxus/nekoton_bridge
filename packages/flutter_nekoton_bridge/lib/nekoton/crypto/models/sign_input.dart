import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_sign_params.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_password.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/ledger_sign_input.dart';

abstract class SignInput {
  Map<String, dynamic> toJson();
}

extension SignInputToSigner on SignInput {
  String toSigner() {
    if (this is EncryptedKeyPassword) return encryptedKeySignerName;
    if (this is DerivedKeySignParams) return derivedKeySignerName;
    if (this is LedgerSignInput) return ledgerKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
