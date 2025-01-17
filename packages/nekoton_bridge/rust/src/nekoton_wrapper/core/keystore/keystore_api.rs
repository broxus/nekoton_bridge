#![allow(unused_variables, dead_code)]
use crate::async_run;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::keystore::models::{SignedData, SignedDataRaw};
use crate::nekoton_wrapper::core::keystore::{verify_data, KeyStoreApiBox, KeyStoreApiBoxTrait};
use crate::nekoton_wrapper::crypto::models::KeySigner;
use crate::nekoton_wrapper::external::ledger_connection_api::LedgerConnectionDartWrapper;
use crate::nekoton_wrapper::external::storage_api::StorageDartWrapper;
use crate::nekoton_wrapper::HandleError;
use nekoton::core::keystore::{KeyStore, KeyStoreBuilder};
use nekoton::crypto::{DerivedKeySigner, EncryptedKeySigner, LedgerKeySigner};
use std::sync::Arc;

pub struct KeystoreDartWrapper {
    pub inner_keystore: RustOpaque<Arc<dyn KeyStoreApiBoxTrait>>,
}

impl KeystoreDartWrapper {
    /// Create KeyStore or throw error
    pub fn new(
        storage: StorageDartWrapper,
        signers: Vec<KeySigner>,
        ledger_connection: Option<LedgerConnectionDartWrapper>,
    ) -> anyhow::Result<KeystoreDartWrapper> {
        let keystore_builder = map_keystore_builder(signers, ledger_connection)?;
        let keystore =
            KeyStoreApiBox::create(keystore_builder, storage.get_storage().get_storage())?;
        Ok(Self {
            inner_keystore: keystore,
        })
    }

    /// Get list of json-encoded KeyStoreEntry or throw error
    pub fn get_entries(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.get_entries().await)
    }

    /// Insert new key in keystore. Returns json-encoded KeystoreEntry or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyCreateInput or
    ///   DerivedKeyCreateInput or LedgerKeyCreateInput
    pub fn add_key(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.add_key(signer, input).await)
    }

    /// Method same as add_key but allows add multiple keys at time.
    /// Returns json-encoded list of KeyStoreEntry or throw error.
    /// input - json-encoded list of inputs, same as in add_key method
    pub fn add_keys(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.add_keys(signer, input).await)
    }

    /// Update key data.
    /// Returns updated json-encoded KeyStoreEntry or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyUpdateParams or
    ///   DerivedKeyUpdateParams or LedgerUpdateKeyInput
    pub fn update_key(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.update_key(signer, input).await)
    }

    /// Export key and get its seed phrase and mnemonic type.
    /// THIS METHOD DO NOT WORK for LEDGER.
    /// Returns json-encoded EncryptedKeyExportSeedOutput or DerivedKeyExportOutput or throw error
    pub fn export_seed(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.export_seed(signer, input).await)
    }

    /// Return list of public keys specified for signer or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyGetPublicKeys or
    ///   DerivedKeyGetPublicKeys or LedgerKeyGetPublicKeys
    pub fn get_public_keys(&self, signer: KeySigner, input: String) -> anyhow::Result<Vec<String>> {
        async_run!(self.inner_keystore.get_public_keys(signer, input).await)
    }

    /// Encrypt data with specified algorithm and input specified for signer eg EncryptedKeyPassword
    ///   or DerivedKeyPassword or LedgerSignInput.
    /// data - base64 encoded data that must be encrypted.
    /// algorithm - name of algorithm that should be used for encryption, for example ChaCha20Poly1305
    /// public_keys - list of keys that is used for encryption.
    ///
    /// Returns json-encoded list of EncryptedData or throw error.
    pub fn encrypt(
        &self,
        signer: KeySigner,
        data: String,
        public_keys: Vec<String>,
        algorithm: String,
        input: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_keystore
                .encrypt(signer, data, public_keys, algorithm, input)
                .await
        )
    }

    /// Decrypt json-encoded EncryptedData in data.
    /// input - json-encoded action for signer eg EncryptedKeyPassword or DerivedKeyPassword or
    ///   LedgerSignInput.
    /// Returns base64-encoded data or throw error.
    pub fn decrypt(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
    ) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.decrypt(signer, data, input).await)
    }

    /// Sign data and return base64-encoded signature or throw error.
    /// input - json-encoded action for signer eg EncryptedKeyPassword or DerivedKeyPassword or
    ///   LedgerSignInput.
    /// signature_id - id of transport
    /// data - base64-encoded data that should be signed.
    pub fn sign(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_keystore
                .sign(signer, data, input, signature_id)
                .await
        )
    }

    /// Same method as sign.
    /// data - base64-encoded string.
    /// Return SignedData or throw error.
    pub fn sign_data(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<SignedData> {
        async_run!(
            self.inner_keystore
                .sign_data(signer, data, input, signature_id)
                .await
        )
    }

    /// Same method as sign.
    /// data - base64-encoded string.
    /// Return SignedDataRaw or throw error.
    pub fn sign_data_raw(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<SignedDataRaw> {
        async_run!(
            self.inner_keystore
                .sign_data_raw(signer, data, input, signature_id)
                .await
        )
    }

    /// Remove public key from KeyStore and return json-encoded KeyStoreEntry if it was removed.
    pub fn remove_key(&self, public_key: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_keystore.remove_key(public_key).await)
    }

    /// Remove list of public key from KeyStore and return json-encoded list of KeyStoreEntry's
    /// that were removed or throw error.
    pub fn remove_keys(&self, public_keys: Vec<String>) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.remove_keys(public_keys).await)
    }

    /// Check if password cached for specified public_key.
    /// duration - timestamp in milliseconds of expiring key.
    /// Returns true/false or throw error.
    pub fn is_password_cached(&self, public_key: String, duration: u64) -> anyhow::Result<bool> {
        async_run!(
            self.inner_keystore
                .is_password_cached(public_key, duration)
                .await
        )
    }

    /// Clear KeyStore and remove all entries and all sensitive data.
    pub fn clear_keystore(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.clear_keystore().await)
    }

    /// Try to reload all stored data.
    pub fn reload_keystore(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.reload_keystore().await)
    }

    /// Verify if data is valid with specified signers and connection or not.
    /// Return true/false or throw error.
    pub fn verify_data(
        signers: Vec<KeySigner>,
        ledger_connection: Option<LedgerConnectionDartWrapper>,
        data: String,
    ) -> anyhow::Result<bool> {
        let builder = map_keystore_builder(signers, ledger_connection)?;
        Ok(verify_data(builder, data))
    }
}

fn map_keystore_builder(
    signers: Vec<KeySigner>,
    connection: Option<LedgerConnectionDartWrapper>,
) -> anyhow::Result<KeyStoreBuilder> {
    let mut keystore_builder = KeyStore::builder();

    if signers.contains(&KeySigner::Encrypted) {
        keystore_builder = keystore_builder
            .with_signer::<EncryptedKeySigner>(
                &KeySigner::Encrypted.to_string(),
                EncryptedKeySigner::new(),
            )
            .handle_error()?;
    }

    if signers.contains(&KeySigner::Derived) {
        keystore_builder = keystore_builder
            .with_signer::<DerivedKeySigner>(
                &KeySigner::Derived.to_string(),
                DerivedKeySigner::new(),
            )
            .handle_error()?;
    }

    if signers.contains(&KeySigner::Ledger) {
        keystore_builder = keystore_builder
            .with_signer::<LedgerKeySigner>(
                &KeySigner::Ledger.to_string(),
                LedgerKeySigner::new(connection.unwrap().get_connection().get_connection()),
            )
            .handle_error()?;
    }

    Ok(keystore_builder)
}
