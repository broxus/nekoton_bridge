import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';
import 'package:rxdart/rxdart.dart';

/// Implementation of nekoton's KeyStore
/// For all of method:
/// signer - is one of strings to identify type of key (ENCRYPTED_KEY_SIGNER_NAME,
///   DERIVED_KEY_SIGNER_NAME or LEDGER_KEY_SIGNER_NAME)
class KeyStore {
  final Storage storage;
  late KeystoreDartWrapper keystore;

  final _keysSubject = BehaviorSubject<List<KeyStoreEntry>>();

  KeyStore._(this.storage);

  static Future<KeyStore> create({
    required Storage storage,
    required List<KeySigner> signers,
    LedgerConnection? ledgerConnection,
  }) async {
    final instance = KeyStore._(storage);

    instance.keystore = await KeystoreDartWrapper.newInstance(
      signers: signers,
      storage: storage.storage,
      ledgerConnection: ledgerConnection?.connection,
    );

    await instance._updateData();

    return instance;
  }

  /// Get list of keys that stores in KeyStore in that moment.
  List<KeyStoreEntry> get keys => _keysSubject.value;

  /// Stream of keys that could be listened outside
  Stream<List<KeyStoreEntry>> get keysStream => _keysSubject.stream;

  /// Return list KeyStoreEntry or throw error
  Future<List<KeyStoreEntry>> getEntries() async {
    final encoded = await keystore.getEntries();
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => KeyStoreEntry.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Return added public key of added KeyStoreEntry or throw error
  Future<PublicKey> addKey(CreateKeyInput input) async {
    final encoded = await keystore.addKey(
      signer: input.toSigner(),
      input: jsonEncode(input),
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return KeyStoreEntry.fromJson(decoded).publicKey;
  }

  /// Return list of public keys of added KeyStoreEntry or throw error
  /// All [inputs] must contains same signer information.
  Future<List<PublicKey>> addKeys(List<CreateKeyInput> inputs) async {
    final signers = inputs.map((e) => e.toSigner()).toSet().toList();
    assert(signers.length == 1);

    final encoded = await keystore.addKeys(
      signer: signers.first,
      input: jsonEncode(inputs),
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    await _updateData();
    return decoded
        .map((e) => KeyStoreEntry.fromJson(e as Map<String, dynamic>).publicKey)
        .toList();
  }

  /// Update key, may throw error
  Future<void> updateKey(UpdateKeyInput input) async {
    await keystore.updateKey(
      signer: input.toSigner(),
      input: jsonEncode(input),
    );
    await _updateData();
  }

  /// Export key and get its seed phrase and mnemonic type.
  /// THIS METHOD DO NOT WORK for LEDGER.
  Future<ExportKeyOutput> exportSeed(ExportKeyInput input) async {
    final signer = input.toSigner();
    final encoded = await keystore.exportSeed(
      signer: signer,
      input: jsonEncode(input),
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;

    return signer.maybeWhen(
      encrypted: () => EncryptedKeyExportSeedOutput.fromJson(decoded),
      derived: () => DerivedKeyExportOutput.fromJson(decoded),
      orElse: () => throw UnsupportedError('Invalid signer'),
    );
  }

  /// Return list of public keys specified for signer or throw error.
  Future<List<PublicKey>> getPublicKeys(GetPublicKeys input) async {
    final keys = await keystore.getPublicKeys(
      signer: input.toSigner(),
      input: jsonEncode(input),
    );
    return keys.map((key) => PublicKey(publicKey: key)).toList();
  }

  /// Encrypt data with specified algorithm and input specified for signer.
  /// data - base64 encoded data that must be encrypted.
  /// public_keys - list of keys that is used for encryption.
  Future<List<EncryptedData>> encrypt({
    required String data,
    required List<PublicKey> publicKeys,
    required EncryptionAlgorithm algorithm,
    required SignInput input,
  }) async {
    final encoded = await keystore.encrypt(
      signer: input.toSigner(),
      input: jsonEncode(input),
      data: data,
      algorithm: algorithm.toString(),
      publicKeys: publicKeys.map((key) => key.publicKey).toList(),
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => EncryptedData.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns base64-encoded data or throw error.
  Future<String> decrypt({
    required EncryptedData data,
    required SignInput input,
  }) async {
    return await keystore.decrypt(
      signer: input.toSigner(),
      input: jsonEncode(input),
      data: jsonEncode(data),
    );
  }

  /// Sign data and return base64-encoded signature or throw error.
  /// [signatureId] - id of transport
  /// [data] - base64-encoded data that should be signed.
  Future<String> sign({
    required String data,
    required SignInput input,
    required int? signatureId,
  }) async {
    return await keystore.sign(
      signer: input.toSigner(),
      input: jsonEncode(input),
      data: data,
      signatureId: signatureId,
    );
  }

  /// Same method as [sign].
  /// [data] - base64-encoded string.
  /// Return SignedData or throw error.
  Future<SignedData> signData({
    required String data,
    required SignInput input,
    required int? signatureId,
  }) async {
    return await keystore.signData(
      signer: input.toSigner(),
      input: jsonEncode(input),
      data: data,
      signatureId: signatureId,
    );
  }

  /// Same method as [sign].
  /// [data] - base64-encoded string.
  /// Return SignedDataRaw or throw error.
  Future<SignedDataRaw> signDataRaw({
    required String data,
    required SignInput input,
    required int? signatureId,
  }) async {
    return await keystore.signDataRaw(
      signer: input.toSigner(),
      input: jsonEncode(input),
      data: data,
      signatureId: signatureId,
    );
  }

  /// Remove public key from KeyStore and return if it was removed.
  Future<bool> removeKey({required PublicKey publicKey}) async {
    final encoded = await keystore.removeKey(publicKey: publicKey.publicKey);
    if (encoded == null) return false;
    await _updateData();
    return true;
  }

  /// Remove list of public key from KeyStore and return list public keys
  /// that were removed or throw error.
  Future<List<PublicKey>> removeKeys({
    required List<PublicKey> publicKeys,
  }) async {
    final encoded = await keystore.removeKeys(
      publicKeys: publicKeys.map((publicKey) => publicKey.publicKey).toList(),
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    await _updateData();
    return decoded
        .map((e) => KeyStoreEntry.fromJson(e as Map<String, dynamic>).publicKey)
        .toList();
  }

  /// Check if password cached for specified public_key.
  /// [duration] - timestamp in milliseconds of expiring key.
  /// Returns true/false or throw error.
  Future<bool> isPasswordCached({
    required PublicKey publicKey,
    required Duration duration,
  }) async {
    return await keystore.isPasswordCached(
      publicKey: publicKey.publicKey,
      duration: BigInt.from(duration.inMilliseconds),
    );
  }

  /// Clear KeyStore and remove all entries and all sensitive data.
  Future<void> clearStore() async {
    await keystore.clearKeystore();
    await _updateData();
  }

  /// Try to reload all stored data.
  Future<void> reloadKeystore() async {
    await keystore.reloadKeystore();
    await _updateData();
  }

  /// Verify if data is valid with specified signers and connection or not.
  /// Return true/false or throw error.
  static Future<bool> verifyData({
    required List<KeySigner> signers,
    required String data,
    LedgerConnection? ledgerConnection,
  }) async {
    return await KeystoreDartWrapper.verifyData(
      signers: signers,
      data: data,
      ledgerConnection: ledgerConnection?.connection,
    );
  }

  Future<void> _updateData() async {
    final keys = await getEntries();
    _keysSubject.add(keys);
  }

  void dispose() {
    storage.dispose();
    _keysSubject.close();
    keystore.innerKeystore.dispose();
  }
}
