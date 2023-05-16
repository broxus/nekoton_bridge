#![allow(unused_variables, dead_code)]

pub mod generic_contract_api;

use crate::clock;
use crate::nekoton_wrapper::{parse_address, HandleError};
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::core::generic_contract::{GenericContract, GenericContractSubscriptionHandler};
use nekoton::core::models::PollingMethod;
use nekoton::core::TransactionExecutionOptions;
use nekoton::crypto::SignedMessage;
use nekoton::transport::Transport;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;
use tokio::sync::Mutex;
use ton_block::{Block, Deserializable};

/// This is a fucking hack that allows using nekoton::GenericContract in dart classes.
/// This is a trait-wrapper above real GenericContract with UnwindSafe + RefUnwindSafe.
#[async_trait]
pub trait GenericContractBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Get address of contract.
    async fn address(&self) -> String;

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String>;

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> anyhow::Result<String>;

    /// Get json-encoded PollingMethod of contract or throw error.
    async fn polling_method(&self) -> PollingMethod;

    /// Execute transaction locally and return its instance.
    /// signed_message - json-encoded SignedMessage
    /// options - additional info for execution
    /// Return json-encoded Transaction or throw error.
    async fn execute_transaction_locally(
        &self,
        signed_message: String,
        options: TransactionExecutionOptions,
    ) -> anyhow::Result<String>;

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(&self, signed_message: String) -> anyhow::Result<String>;

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    async fn send(&self, signed_message: String) -> anyhow::Result<String>;

    /// Refresh contract and update its data.
    /// Returns true or throw error.
    async fn refresh(&self) -> anyhow::Result<bool>;

    /// Preload transactions of contract.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool>;

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    async fn handle_block(&self, block: String) -> anyhow::Result<bool>;
}

pub struct GenericContractBox {
    inner_contract: Arc<Mutex<GenericContract>>,
}

impl GenericContractBox {
    /// Create GenericContract by subscribing to its instance.
    /// address - address of contract
    /// preload_transactions - if transactions must be loaded during creation
    pub async fn subscribe(
        transport: Arc<dyn Transport>,
        address: String,
        preload_transactions: bool,
        handler: Arc<dyn GenericContractSubscriptionHandler>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn GenericContractBoxTrait>>> {
        let address = parse_address(address)?;

        let generic_contract =
            GenericContract::subscribe(clock!(), transport, address, handler, preload_transactions)
                .await
                .handle_error()?;

        Ok(RustOpaque::new(Arc::new(GenericContractBox {
            inner_contract: Arc::new(Mutex::new(generic_contract)),
        })))
    }
}

impl UnwindSafe for GenericContractBox {}

impl RefUnwindSafe for GenericContractBox {}

#[async_trait]
impl GenericContractBoxTrait for GenericContractBox {
    /// Get address of contract.
    async fn address(&self) -> String {
        let contract = self.inner_contract.lock().await;
        contract.address().to_string()
    }

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String> {
        let contract = self.inner_contract.lock().await;
        serde_json::to_string(&contract.contract_state()).handle_error()
    }

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> anyhow::Result<String> {
        let contract = self.inner_contract.lock().await;
        let pending_transactions = contract.pending_transactions();
        serde_json::to_string(pending_transactions).handle_error()
    }

    /// Get json-encoded PollingMethod of contract or throw error.
    async fn polling_method(&self) -> PollingMethod {
        self.inner_contract.lock().await.polling_method()
    }

    /// Execute transaction locally and return its instance.
    /// signed_message - json-encoded SignedMessage
    /// options - additional info for execution
    /// Return json-encoded Transaction or throw error.
    async fn execute_transaction_locally(
        &self,
        signed_message: String,
        options: TransactionExecutionOptions,
    ) -> anyhow::Result<String> {
        let message = serde_json::from_str::<SignedMessage>(&signed_message)
            .handle_error()?
            .message;

        let transaction = self
            .inner_contract
            .lock()
            .await
            .execute_transaction_locally(&message, options)
            .await
            .handle_error()?;

        serde_json::to_string(&transaction).handle_error()
    }

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(&self, signed_message: String) -> anyhow::Result<String> {
        let message = serde_json::from_str::<SignedMessage>(&signed_message)
            .handle_error()?
            .message;

        let fees = self
            .inner_contract
            .lock()
            .await
            .estimate_fees(&message)
            .await
            .handle_error()?
            .to_string();

        Ok(fees)
    }

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    async fn send(&self, signed_message: String) -> anyhow::Result<String> {
        let signed_message =
            serde_json::from_str::<SignedMessage>(&signed_message).handle_error()?;

        let pending_transaction = self
            .inner_contract
            .lock()
            .await
            .send(&signed_message.message, signed_message.expire_at)
            .await
            .handle_error()?;

        serde_json::to_string(&pending_transaction).handle_error()
    }

    /// Refresh contract and update its data.
    /// Returns true or throw error.
    async fn refresh(&self) -> anyhow::Result<bool> {
        self.inner_contract
            .lock()
            .await
            .refresh()
            .await
            .handle_error()?;
        Ok(true)
    }

    /// Preload transactions of contract.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        let from_lt = from_lt.parse::<u64>().handle_error()?;
        self.inner_contract
            .lock()
            .await
            .preload_transactions(from_lt)
            .await
            .handle_error()?;
        Ok(true)
    }

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    async fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        let block = Block::construct_from_base64(&block).handle_error()?;
        self.inner_contract
            .lock()
            .await
            .handle_block(&block)
            .await
            .handle_error()?;
        Ok(true)
    }
}
