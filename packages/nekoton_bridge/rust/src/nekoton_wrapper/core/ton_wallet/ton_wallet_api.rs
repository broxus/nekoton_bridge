#![allow(clippy::too_many_arguments)]
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::ton_wallet::{
    ton_wallet_find_existing_wallets, ton_wallet_get_custodians,
    ton_wallet_get_existing_wallet_info, TonWalletBox, TonWalletBoxTrait,
};
use crate::nekoton_wrapper::crypto::crypto_api::UnsignedMessageImpl;
use crate::nekoton_wrapper::transport::TransportBoxTrait;
use crate::utils::caller;
use flutter_rust_bridge::frb;
pub use nekoton::core::models::{
    ContractState, PendingTransaction, PollingMethod, Transaction, TransactionAdditionalInfo,
    TransactionWithData, TransactionsBatchInfo,
};
use nekoton::core::ton_wallet::{TonWalletDetails, TonWalletSubscriptionHandler};
use nekoton::models::MultisigPendingTransaction;
use std::sync::Arc;

#[frb(mirror(PollingMethod))]
pub enum _PollingMethod {
    /// Manual polling once a minute or by a click.
    /// Used when there are no pending transactions
    Manual,
    /// Block-walking for GQL or fast refresh for ADNL.
    /// Used when there are some pending transactions
    Reliable,
}

pub struct TonWalletDartWrapper {
    pub inner_wallet: RustOpaque<Arc<dyn TonWalletBoxTrait>>,
}

impl TonWalletDartWrapper {
    /// Create TonWallet by subscribing to its instance by public_key.
    /// wallet_type - is json-encoded WalletType.
    /// public_key - is string representation of key
    pub async fn subscribe(
        instance_hash: String,
        workchain_id: i8,
        public_key: String,
        wallet_type: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = TonWalletBox::subscribe(
            transport.get_transport(),
            workchain_id,
            public_key,
            wallet_type,
            Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash }),
        )
        .await?;

        Ok(Self {
            inner_wallet: wallet,
        })
    }

    /// Create TonWallet by subscribing to its instance by address of wallet.
    pub async fn subscribe_by_address(
        instance_hash: String,
        address: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = TonWalletBox::subscribe_by_address(
            transport.get_transport(),
            address,
            Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash }),
        )
        .await?;

        Ok(Self {
            inner_wallet: wallet,
        })
    }

    /// Create TonWallet by subscribing to its instance by existed instance.
    /// existing_wallet - json-encoded ExistingWalletInfo.
    pub async fn subscribe_by_existing(
        instance_hash: String,
        existing_wallet: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = TonWalletBox::subscribe_by_existing(
            transport.get_transport(),
            existing_wallet,
            Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash }),
        )
        .await?;

        Ok(Self {
            inner_wallet: wallet,
        })
    }

    pub fn append_signature_to_wallet_v5r1_payload(
        payload: String,
        base64_signature: String,
    ) -> anyhow::Result<String> {
        let result =
            TonWalletBox::append_signature_to_wallet_v5r1_payload(payload, base64_signature)?;
        Ok(result)
    }

    /// Get workchain of wallet.
    pub async fn workchain(&self) -> i8 {
        self.inner_wallet.workchain().await
    }

    /// Get address of wallet.
    pub async fn address(&self) -> String {
        self.inner_wallet.address().await
    }

    /// Get public key of wallet.
    pub async fn public_key(&self) -> String {
        self.inner_wallet.public_key().await
    }

    /// Get json-encoded WalletType or throw error.
    pub async fn wallet_type(&self) -> anyhow::Result<String> {
        self.inner_wallet.wallet_type().await
    }

    /// Get json-encoded ContractState or throw error.
    pub async fn contract_state(&self) -> anyhow::Result<String> {
        self.inner_wallet.contract_state().await
    }

    /// Get list of json-encoded PendingTransaction or throw error.
    pub async fn pending_transactions(&self) -> anyhow::Result<String> {
        self.inner_wallet.pending_transactions().await
    }

    /// Get PollingMethod of wallet or throw error.
    pub async fn polling_method(&self) -> PollingMethod {
        self.inner_wallet.polling_method().await
    }

    /// Get json-encoded TonWalletDetails or throw error.
    pub async fn details(&self) -> anyhow::Result<String> {
        self.inner_wallet.details().await
    }

    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    pub async fn unconfirmed_transactions(&self) -> anyhow::Result<String> {
        self.inner_wallet.unconfirmed_transactions().await
    }

    /// Get optional list of custodians.
    /// Returns list of public keys.
    pub async fn custodians(&self) -> Option<Vec<String>> {
        self.inner_wallet.custodians().await
    }

    /// Prepare TonWallet for deploy action.
    /// expiration - json-encoded Expiration.
    /// Returns UnsignedMessage or throw error.
    pub async fn prepare_deploy(&self, expiration: String) -> anyhow::Result<UnsignedMessageImpl> {
        self.inner_wallet
            .prepare_deploy(expiration)
            .await
            .map(|m| UnsignedMessageImpl { inner_message: m })
    }

    /// Prepare TonWallet for deploy actions if wallet is multisig.
    /// expiration - json-encoded Expiration.
    /// custodians - list of public keys of custodians.
    /// req_confirms - count of required confirmations from 1 to custodians count
    /// Returns UnsignedMessage or throw error.
    pub async fn prepare_deploy_with_multiple_owners(
        &self,
        expiration: String,
        custodians: Vec<String>,
        req_confirms: u8,
        expiration_time: Option<u32>,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        self.inner_wallet
            .prepare_deploy_with_multiple_owners(
                expiration,
                custodians,
                req_confirms,
                expiration_time,
            )
            .await
            .map(|m| UnsignedMessageImpl { inner_message: m })
    }

    /// Prepare transferring tokens from this wallet to other.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// expiration - json-encoded Expiration
    /// params - json-encoded list of TonWalletTransferParams
    /// Returns UnsignedMessage or throw error.
    pub async fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        self.inner_wallet
            .prepare_transfer(contract_state, public_key, expiration, params)
            .await
            .map(|m| UnsignedMessageImpl { inner_message: m })
    }

    /// Returns (hash, payload)
    pub async fn prepare_wallet_v5r1_message_body(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)> {
        self.inner_wallet
            .prepare_wallet_v5r1_message_body(
                contract_state,
                public_key,
                expiration,
                params,
                is_internal_flow,
            )
            .await
    }

    pub async fn prepare_nonexist_wallet_v5r1_message_body(
        &self,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)> {
        self.inner_wallet
            .prepare_nonexist_wallet_v5r1_message_body(expiration, params, is_internal_flow)
            .await
    }

    /// Prepare transaction for confirmation.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// transaction_id - id of transaction.
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    pub async fn prepare_confirm_transaction(
        &self,
        contract_state: String,
        public_key: String,
        transaction_id: String,
        expiration: String,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        self.inner_wallet
            .prepare_confirm_transaction(contract_state, public_key, transaction_id, expiration)
            .await
            .map(|m| UnsignedMessageImpl { inner_message: m })
    }

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// execution_options - json-encoded ExecutionOptions.
    /// Returns fees as string representation of u128 or throw error.
    pub async fn estimate_fees(
        &self,
        signed_message: String,
        execution_options: Option<String>,
    ) -> anyhow::Result<String> {
        self.inner_wallet
            .estimate_fees(signed_message, execution_options)
            .await
    }

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    pub async fn send(&self, signed_message: String) -> anyhow::Result<String> {
        self.inner_wallet.send(signed_message).await
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

    /// Find list of wallets of public_key and return them.
    /// wallet_types - json-encoded list of WalletType.
    /// public_key - key of account where wallets must be found.
    /// Return json-encoded list of ExistingWalletInfo or throw error.
    pub async fn find_existing_wallets(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        public_key: String,
        workchain_id: i8,
        wallet_types: String,
    ) -> anyhow::Result<String> {
        ton_wallet_find_existing_wallets(
            transport.get_transport(),
            public_key,
            workchain_id,
            wallet_types,
        )
        .await
    }

    /// Get information of account by its address.
    /// Return json-encoded ExistingWalletInfo or throw error.
    pub async fn get_existing_wallet_info(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<String> {
        ton_wallet_get_existing_wallet_info(transport.get_transport(), address).await
    }

    /// Get list of custodians of account by address.
    /// Return list of public keys or throw error.
    pub async fn get_custodians(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<Vec<String>> {
        ton_wallet_get_custodians(transport.get_transport(), address).await
    }

    pub async fn make_state_init(&self) -> anyhow::Result<String> {
        self.inner_wallet.make_state_init().await
    }

    pub async fn get_wallet_v5r1_seqno(
        &self,
        raw_current_state: String,
        public_key: String,
    ) -> anyhow::Result<u32> {
        self.inner_wallet
            .get_wallet_v5r1_seqno(raw_current_state, public_key)
            .await
    }
}

/// Handler for TonWallet that calls dart methods and sends data
pub struct TonWalletSubscriptionHandlerImpl {
    pub instance_hash: String,
}

impl TonWalletSubscriptionHandler for TonWalletSubscriptionHandlerImpl {
    /// Send json-encoded list with 2 positions:
    /// 0: PendingTransaction
    /// 1: Option<Transaction>
    fn on_message_sent(
        &self,
        pending_transaction: PendingTransaction,
        transaction: Option<Transaction>,
    ) {
        let payload = serde_json::to_string(&(pending_transaction, transaction)).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onMessageSent"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    /// Send json-encoded PendingTransaction
    fn on_message_expired(&self, pending_transaction: PendingTransaction) {
        let payload = serde_json::to_string(&pending_transaction).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onMessageExpired"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    /// Send json-encoded ContractState
    fn on_state_changed(&self, new_state: ContractState) {
        let payload = serde_json::to_string(&new_state).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onStateChanged"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    /// Send json-encoded list with 2 positions:
    /// 0: list of TransactionWithData<TransactionAdditionalInfo>
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<TransactionAdditionalInfo>>,
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

    fn on_details_changed(&self, details: TonWalletDetails) {
        let payload = serde_json::to_string(&details).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onDetailsChanged"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    fn on_custodians_changed(&self, custodians: &[ton_types::UInt256]) {
        let payload = custodians
            .iter()
            .map(|item| item.to_hex_string())
            .collect::<Vec<String>>();
        let payload = serde_json::to_string(&payload).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onCustodiansChanged"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }

    fn on_unconfirmed_transactions_changed(
        &self,
        unconfirmed_transactions: &[MultisigPendingTransaction],
    ) {
        let payload = serde_json::to_string(unconfirmed_transactions).unwrap();
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onUnconfirmedTransactionsChanged"),
            args: vec![caller::DynamicValue::String(payload)],
            named_args: vec![],
        };
        caller::call(stub, false);
    }
}
