#![allow(clippy::too_many_arguments)]
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::jetton_wallet::{
    jetton_root_details, jetton_root_details_from_jetton_wallet, jetton_wallet_details,
    JettonWalletBox, JettonWalletBoxTrait,
};
use crate::nekoton_wrapper::transport::TransportBoxTrait;
use crate::nekoton_wrapper::HandleError;
pub use flutter_rust_bridge::DartFnFuture;
use nekoton::core::jetton_wallet::JettonWalletSubscriptionHandler;
pub use nekoton::core::models::{TransactionWithData, TransactionsBatchInfo};
use nekoton::models::JettonWalletTransaction;
use nekoton_abi::num_bigint::BigUint;
use std::sync::Arc;

pub struct JettonWalletDartWrapper {
    pub inner_wallet: RustOpaque<Arc<dyn JettonWalletBoxTrait>>,
}

impl JettonWalletDartWrapper {
    /// Create JettonWallet by subscribing to its instance.
    /// owner - address of account that is owner of wallet
    /// root_token_contract - address of contract in blockchain
    pub async fn subscribe(
        owner: String,
        root_token_contract: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        preload_transactions: bool,
        on_balance_changed: impl Fn(String) -> DartFnFuture<()> + Send + Sync + 'static,
        on_transactions_found: impl Fn(String) -> DartFnFuture<()> + Send + Sync + 'static,
    ) -> anyhow::Result<JettonWalletDartWrapper> {
        let wallet = JettonWalletBox::subscribe(
            transport.get_transport(),
            owner,
            root_token_contract,
            Arc::new(JettonWalletSubscriptionHandlerImpl {
                on_balance_changed: Arc::new(on_balance_changed),
                on_transactions_found: Arc::new(on_transactions_found),
            }),
            preload_transactions,
        )
        .await
        .handle_error()?;

        Ok(Self {
            inner_wallet: wallet,
        })
    }

    /// Get address of owner of wallet.
    pub async fn owner(&self) -> String {
        self.inner_wallet.owner().await
    }

    /// Get address of wallet.
    pub async fn address(&self) -> String {
        self.inner_wallet.address().await
    }

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    pub async fn balance(&self) -> String {
        self.inner_wallet.balance().await
    }

    /// Get json-encoded ContractState or throw error.
    pub async fn contract_state(&self) -> anyhow::Result<String> {
        self.inner_wallet.contract_state().await
    }

    pub async fn estimate_min_attached_amount(
        &self,
        destination: String,
    ) -> anyhow::Result<String> {
        self.inner_wallet
            .estimate_min_attached_amount(destination)
            .await
    }

    /// Prepare transferring tokens from this wallet to other.
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// notify_receiver - if receiver should be notifier by blockchain
    /// payload - payload of transfer aka comment
    /// attached_amount - string representation of rust u64, default 400000000. How many native tokens
    ///   should be attached to transfer.
    /// Return json-encoded InternalMessage or throw error.
    pub async fn prepare_transfer(
        &self,
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
        attached_amount: Option<String>,
    ) -> anyhow::Result<String> {
        self.inner_wallet
            .prepare_transfer(
                amount,
                destination,
                remaining_gas_to,
                custom_payload,
                callback_value,
                callback_payload,
                attached_amount,
            )
            .await
    }

    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    pub async fn refresh(&self) -> anyhow::Result<bool> {
        self.inner_wallet.refresh().await
    }

    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        self.inner_wallet.preload_transactions(from_lt).await
    }

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub async fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        self.inner_wallet.handle_block(block).await
    }

    /// Get details about token wallet by address of wallet
    /// address - address of wallet
    /// Return json-encoded list with 2 positions:
    /// 0: JettonWalletDetails
    /// 1: RootJettonContractDetails
    /// or throw error
    pub async fn get_jetton_wallet_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<String> {
        jetton_wallet_details(transport.get_transport(), address).await
    }

    /// Get details about root contract by address of JettonWallet
    /// Return json-encoded list with 2 positions:
    /// 0: Address of root contract
    /// 1: RootJettonContractDetails of root contract
    /// or throw error.
    pub async fn get_jetton_root_details_from_jetton_wallet(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_wallet_address: String,
    ) -> anyhow::Result<String> {
        jetton_root_details_from_jetton_wallet(transport.get_transport(), token_wallet_address)
            .await
    }

    /// Get details about root contract by address of JettonWallet
    /// Return json-encoded RootJettonContractDetails
    /// or throw error.
    pub async fn get_jetton_root_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_root_address: String,
    ) -> anyhow::Result<String> {
        jetton_root_details(transport.get_transport(), token_root_address).await
    }
}

/// Handler for JettonWallet that calls dart methods via provided closures
pub struct JettonWalletSubscriptionHandlerImpl {
    pub on_balance_changed: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
    pub on_transactions_found: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
}

impl JettonWalletSubscriptionHandler for JettonWalletSubscriptionHandlerImpl {
    fn on_balance_changed(&self, balance: BigUint) {
        let fut = (self.on_balance_changed)(balance.to_string());
        flutter_rust_bridge::spawn(async move {
            fut.await;
        });
    }

    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<JettonWalletTransaction>>,
        batch_info: TransactionsBatchInfo,
    ) {
        let payload = serde_json::to_string(&(transactions, batch_info)).unwrap();
        let fut = (self.on_transactions_found)(payload);
        flutter_rust_bridge::spawn(async move {
            fut.await;
        });
    }
}
