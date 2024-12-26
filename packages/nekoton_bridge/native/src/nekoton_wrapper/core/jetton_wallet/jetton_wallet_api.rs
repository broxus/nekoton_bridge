#![allow(clippy::too_many_arguments)]
use crate::async_run;

use crate::nekoton_wrapper::core::jetton_wallet::{
    jetton_root_details, jetton_root_details_from_jetton_wallet, jetton_wallet_details,
    JettonWalletBox, JettonWalletBoxTrait,
};
use crate::nekoton_wrapper::external::gql_connection_api::GqlConnectionDartWrapper;
use crate::nekoton_wrapper::transport::TransportBoxTrait;
use crate::nekoton_wrapper::HandleError;
use crate::utils::caller;
use flutter_rust_bridge::RustOpaque;
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
    pub fn subscribe(
        instance_hash: String,
        owner: String,
        root_token_contract: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        gql_connection: GqlConnectionDartWrapper,
        preload_transactions: bool,
    ) -> anyhow::Result<JettonWalletDartWrapper> {
        let wallet = async_run!(
            JettonWalletBox::subscribe(
                transport.get_transport(),
                gql_connection.get_connection().get_connection(),
                owner,
                root_token_contract,
                Arc::new(JettonWalletSubscriptionHandlerImpl { instance_hash }),
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

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    pub fn balance(&self) -> String {
        async_run!(self.inner_wallet.balance().await)
    }

    /// Get json-encoded ContractState or throw error.
    pub fn contract_state(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.contract_state().await)
    }

    pub fn estimate_min_attached_amount(&self, destination: String) -> anyhow::Result<String> {
        async_run!(
            self.inner_wallet
                .estimate_min_attached_amount(destination)
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
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
        attached_amount: Option<String>,
    ) -> anyhow::Result<String> {
        async_run!(
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
    /// 0: JettonWalletDetails
    /// 1: RootJettonContractDetails
    /// or throw error
    pub fn get_jetton_wallet_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        gql_connection: GqlConnectionDartWrapper,
        address: String,
    ) -> anyhow::Result<String> {
        async_run!(
            jetton_wallet_details(
                transport.get_transport(),
                gql_connection.get_connection().get_connection(),
                address,
            )
            .await
        )
    }

    /// Get details about root contract by address of JettonWallet
    /// Return json-encoded list with 2 positions:
    /// 0: Address of root contract
    /// 1: RootJettonContractDetails of root contract
    /// or throw error.
    pub fn get_jetton_root_details_from_jetton_wallet(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        gql_connection: GqlConnectionDartWrapper,
        token_wallet_address: String,
    ) -> anyhow::Result<String> {
        async_run!(
            jetton_root_details_from_jetton_wallet(
                transport.get_transport(),
                gql_connection.get_connection().get_connection(),
                token_wallet_address,
            )
            .await
        )
    }

    /// Get details about root contract by address of JettonWallet
    /// Return json-encoded RootJettonContractDetails
    /// or throw error.
    pub fn get_jetton_root_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        gql_connection: GqlConnectionDartWrapper,
        token_root_address: String,
    ) -> anyhow::Result<String> {
        async_run!(
            jetton_root_details(
                transport.get_transport(),
                gql_connection.get_connection().get_connection(),
                token_root_address,
            )
            .await
        )
    }
}

/// Handler for TonWallet that calls dart methods and sends data
pub struct JettonWalletSubscriptionHandlerImpl {
    pub instance_hash: String,
}

impl JettonWalletSubscriptionHandler for JettonWalletSubscriptionHandlerImpl {
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
    /// 0: list of TransactionWithData<JettonWalletTransaction>
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<JettonWalletTransaction>>,
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
