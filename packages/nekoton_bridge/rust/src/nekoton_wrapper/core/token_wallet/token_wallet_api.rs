#![allow(clippy::too_many_arguments)]
use crate::async_run;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::token_wallet::{
    token_root_details, token_root_details_from_token_wallet, token_wallet_details, TokenWalletBox,
    TokenWalletBoxTrait,
};

use crate::nekoton_wrapper::transport::TransportBoxTrait;
use crate::nekoton_wrapper::HandleError;
use crate::utils::caller;
use nekoton::core::models::TokenWalletTransaction;
pub use nekoton::core::models::{TransactionWithData, TransactionsBatchInfo};
use nekoton::core::token_wallet::TokenWalletSubscriptionHandler;
use nekoton_abi::num_bigint::BigUint;
use std::sync::Arc;

pub struct TokenWalletDartWrapper {
    pub inner_wallet: RustOpaque<Arc<dyn TokenWalletBoxTrait>>,
}

impl TokenWalletDartWrapper {
    /// Create TokenWallet by subscribing to its instance.
    /// owner - address of account that is owner of wallet
    /// root_token_contract - address of contract in blockchain
    pub fn subscribe(
        instance_hash: String,
        owner: String,
        root_token_contract: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        preload_transactions: bool,
    ) -> anyhow::Result<TokenWalletDartWrapper> {
        let wallet = async_run!(
            TokenWalletBox::subscribe(
                transport.get_transport(),
                owner,
                root_token_contract,
                Arc::new(TokenWalletSubscriptionHandlerImpl { instance_hash }),
                preload_transactions,
            )
            .await
        )
        .handle_error()?;

        Ok(Self {
            inner_wallet: wallet,
        })
    }

    /// Get address of owner of wallet.
    pub fn owner(&self) -> String {
        async_run!(self.inner_wallet.owner().await)
    }

    /// Get address of wallet.
    pub fn address(&self) -> String {
        async_run!(self.inner_wallet.address().await)
    }

    /// Get symbol of contract of wallet.
    /// Return json-encoded Symbol or throw error
    pub fn symbol(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.symbol().await)
    }

    /// Get json-encoded TokenWalletVersion or throw error.
    pub fn version(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.version().await)
    }

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    pub fn balance(&self) -> String {
        async_run!(self.inner_wallet.balance().await)
    }

    /// Get json-encoded ContractState or throw error.
    pub fn contract_state(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.contract_state().await)
    }

    pub fn estimate_min_attached_amount(
        &self,
        destination: String,
        amount: String,
        notify_receiver: bool,
        payload: Option<String>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_wallet
                .estimate_min_attached_amount(destination, amount, notify_receiver, payload)
                .await
        )
    }

    /// Prepare transferring tokens from this wallet to other.
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// notify_receiver - if receiver should be notifier by blockchain
    /// payload - payload of transfer aka comment
    /// attached_amount - string representation of rust u64, default 400000000. How many native tokens
    ///   should be attached to transfer.
    /// Return json-encoded InternalMessage or throw error.
    pub fn prepare_transfer(
        &self,
        destination: String,
        amount: String,
        notify_receiver: bool,
        attached_amount: Option<String>,
        payload: Option<String>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_wallet
                .prepare_transfer(
                    destination,
                    amount,
                    notify_receiver,
                    attached_amount,
                    payload
                )
                .await
        )
    }

    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    pub fn refresh(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.refresh().await)
    }

    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.preload_transactions(from_lt).await)
    }

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.handle_block(block).await)
    }

    /// Get details about token wallet by address of wallet
    /// address - address of wallet
    /// Return json-encoded list with 2 positions:
    /// 0: TokenWalletDetails
    /// 1: RootTokenContractDetails
    /// or throw error
    pub fn get_token_wallet_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<String> {
        async_run!(token_wallet_details(transport.get_transport(), address,).await)
    }

    /// Get details about root contract by address of TokenWallet
    /// Return json-encoded list with 2 positions:
    /// 0: Address of root contract
    /// 1: RootTokenContractDetails of root contract
    /// or throw error.
    pub fn get_token_root_details_from_token_wallet(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_wallet_address: String,
    ) -> anyhow::Result<String> {
        async_run!(
            token_root_details_from_token_wallet(transport.get_transport(), token_wallet_address,)
                .await
        )
    }

    /// Get details about root contract by address of TokenWallet
    /// Return json-encoded RootTokenContractDetails
    /// or throw error.
    pub fn get_token_root_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_root_address: String,
    ) -> anyhow::Result<String> {
        async_run!(token_root_details(transport.get_transport(), token_root_address,).await)
    }
}

/// Handler for TonWallet that calls dart methods and sends data
pub struct TokenWalletSubscriptionHandlerImpl {
    pub instance_hash: String,
}

impl TokenWalletSubscriptionHandler for TokenWalletSubscriptionHandlerImpl {
    /// Send string representation of rust BigUInt
    fn on_balance_changed(&self, balance: BigUint) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onBalanceChanged"),
            args: vec![caller::DynamicValue::String(balance.to_string())],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    /// Send json-encoded list with 2 positions:
    /// 0: list of TransactionWithData<TokenWalletTransaction>
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<TokenWalletTransaction>>,
        batch_info: TransactionsBatchInfo,
    ) {
        let payload = serde_json::to_string(&(transactions, batch_info)).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onTransactionsFound"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }
}
