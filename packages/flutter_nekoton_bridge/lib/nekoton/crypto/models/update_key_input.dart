import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_update_params.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/encrypted_key_update_params.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/constants.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/ledger_update_key_input.dart';

abstract class UpdateKeyInput {
  Map<String, dynamic> toJson();
}

extension UpdateKeyInputToSigner on UpdateKeyInput {
  String toSigner() {
    if (this is EncryptedKeyUpdateParams) return encryptedKeySignerName;
    if (this is DerivedKeyUpdateParams) return derivedKeySignerName;
    if (this is LedgerUpdateKeyInput) return ledgerKeySignerName;
    throw UnsupportedError('Invalid signer');
  }
}
