import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Generate seed phrase by specified mnemonic type
GeneratedKeyG generateKey({required MnemonicType accountType}) {
  return ntGenerateKey(accountType: accountType);
}

/// Get hints for input part of word of seed phrase to get possible words
/// input: acco
/// returns [account, accommodate, ...]
List<String> getHints({required String input}) {
  return ntGetHints(input: input);
}

/// Generate public and secret keys from seed phrase and mnemonic type
/// Returns json {'public': '...', 'secret': '...'}
/// or throws Exception
Keypair deriveFromPhrase({
  required String phrase,
  required MnemonicType mnemonicType,
}) {
  return Keypair.fromJson(
    jsonDecode(ntDeriveFromPhrase(phrase: phrase, mnemonicType: mnemonicType)),
  );
}
