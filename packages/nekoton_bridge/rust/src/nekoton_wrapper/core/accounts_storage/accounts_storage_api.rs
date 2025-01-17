#![allow(unused_variables, dead_code)]

use crate::async_run;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::accounts_storage::{
    accounts_storage_verify_data, AccountsStorageBox, AccountsStorageBoxTrait,
};
use crate::nekoton_wrapper::external::storage_api::StorageDartWrapper;
use std::sync::Arc;

/// Implementation of AccountsStorage
pub struct AccountsStorageImpl {
    pub inner_storage: RustOpaque<Arc<dyn AccountsStorageBoxTrait>>,
}

impl AccountsStorageImpl {
    /// Create AccountsStorage or throw error
    pub fn new(storage: StorageDartWrapper) -> anyhow::Result<AccountsStorageImpl> {
        Ok(Self {
            inner_storage: AccountsStorageBox::create(storage.get_storage().get_storage())?,
        })
    }

    /// Get list of accounts.
    /// Returns json-encoded List of AssetsList or throw error
    pub fn get_entries(&self) -> anyhow::Result<String> {
        async_run!(self.inner_storage.get_entries().await)
    }

    /// Add new account to storage and return its instance.
    /// account - json-encoded AccountToAdd.
    /// Return json-encoded AssetsList or throw error.
    pub fn add_account(&self, account: String) -> anyhow::Result<String> {
        async_run!(self.inner_storage.add_account(account).await)
    }

    /// Add list of new accounts to storage and return it instances.
    /// account - json-encoded list of AccountToAdd.
    /// Return json-encoded list of AssetsList or throw error.
    pub fn add_accounts(&self, accounts: String) -> anyhow::Result<String> {
        async_run!(self.inner_storage.add_accounts(accounts).await)
    }

    /// Rename existed account and return its renamed instance.
    /// account_address - address of account
    /// name - new name of account
    /// Return json-encoded AssetsList or throw error.
    pub fn rename_account(&self, account_address: String, name: String) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .rename_account(account_address, name)
                .await
        )
    }

    /// Add token wallet signature to account (add new token to account aka enable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contract - address of token in blockchain.
    /// Return updated AssetsList or throw error.
    pub fn add_token_wallet(
        &self,
        account_address: String,
        network_group: String,
        root_token_contract: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .add_token_wallet(account_address, network_group, root_token_contract)
                .await
        )
    }

    /// Add token wallets signatures to account (add new tokens to account aka enable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contracts - list of addresses of tokens in blockchain.
    /// Return true or throw error.
    pub fn add_token_wallets(
        &self,
        account_address: String,
        network_group: String,
        root_token_contracts: Vec<String>,
    ) -> anyhow::Result<bool> {
        async_run!(
            self.inner_storage
                .add_token_wallets(account_address, network_group, root_token_contracts)
                .await
        )
    }

    /// Remove token wallet signature from account (remove token from account aka disable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contract - address of token in blockchain.
    /// Return updated AssetsList or throw error.
    pub fn remove_token_wallet(
        &self,
        account_address: String,
        network_group: String,
        root_token_contract: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .remove_token_wallet(account_address, network_group, root_token_contract)
                .await
        )
    }

    /// Remove token wallets signatures from account (remove tokens from account aka disable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contracts - list of addresses of tokens in blockchain.
    /// Return true or throw error.
    pub fn remove_token_wallets(
        &self,
        account_address: String,
        network_group: String,
        root_token_contracts: Vec<String>,
    ) -> anyhow::Result<bool> {
        async_run!(
            self.inner_storage
                .remove_token_wallets(account_address, network_group, root_token_contracts)
                .await
        )
    }

    /// Remove account from storage and return its instance if it was removed.
    /// account_address - address of account
    /// Return json-encoded AssetsList that was removed or null or throw error.
    pub fn remove_account(&self, account_address: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_storage.remove_account(account_address).await)
    }

    /// Remove list of account from storage and return it instances if it were removed.
    /// account_addresses - list of addresses of accounts.
    /// Return json-encoded list of AssetsList that were removed or throw error.
    pub fn remove_accounts(&self, account_addresses: Vec<String>) -> anyhow::Result<String> {
        async_run!(self.inner_storage.remove_accounts(account_addresses).await)
    }

    /// Clear storage and remove all data.
    /// Returns true or throw error
    pub fn clear(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_storage.clear().await)
    }

    /// Reload storage and read all data again.
    /// Returns true or throw error.
    pub fn reload(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_storage.reload().await)
    }

    /// Check if data is correct for storage.
    pub fn verify_data(data: String) -> bool {
        accounts_storage_verify_data(data)
    }
}
