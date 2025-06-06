#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::generic_contract::{GenericContractBox, GenericContractBoxTrait};
use crate::nekoton_wrapper::transport::TransportBoxTrait;
use crate::nekoton_wrapper::HandleError;
use crate::utils::caller;
use nekoton::core::generic_contract::GenericContractSubscriptionHandler;
use nekoton::core::models::{
    ContractState, PendingTransaction, PollingMethod, Transaction, TransactionsBatchInfo,
};
use std::sync::Arc;

pub struct GenericContractDartWrapper {
    pub inner_contract: RustOpaque<Arc<dyn GenericContractBoxTrait>>,
}
impl GenericContractDartWrapper {
    /// Create GenericContract by subscribing to its instance.
    /// address - address of contract
    /// preload_transactions - if transactions must be loaded during creation
    pub async fn subscribe(
        instance_hash: String,
        address: String,
        preload_transactions: bool,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<GenericContractDartWrapper> {
        let contract = GenericContractBox::subscribe(
            transport.get_transport(),
            address,
            preload_transactions,
            Arc::new(GenericContractSubscriptionHandlerImpl { instance_hash }),
        )
        .await
        .handle_error()?;

        Ok(Self {
            inner_contract: contract,
        })
    }

    /// Get address of contract.
    pub async fn address(&self) -> String {
        self.inner_contract.address().await
    }

    /// Get json-encoded ContractState or throw error.
    pub async fn contract_state(&self) -> anyhow::Result<String> {
        self.inner_contract.contract_state().await
    }

    /// Get list of json-encoded PendingTransaction or throw error.
    pub async fn pending_transactions(&self) -> anyhow::Result<String> {
        self.inner_contract.pending_transactions().await
    }

    /// Get PollingMethod of contract or throw error.
    pub async fn polling_method(&self) -> PollingMethod {
        self.inner_contract.polling_method().await
    }

    /// Execute transaction locally and return its instance.
    /// signed_message - json-encoded SignedMessage
    /// options - additional info for execution
    /// Return json-encoded Transaction or throw error.
    pub async fn execute_transaction_locally(
        &self,
        signed_message: String,
        options: String,
    ) -> anyhow::Result<String> {
        self.inner_contract
            .execute_transaction_locally(signed_message, options)
            .await
    }

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    pub async fn estimate_fees(&self, signed_message: String) -> anyhow::Result<String> {
        self.inner_contract.estimate_fees(signed_message).await
    }

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    pub async fn send(&self, signed_message: String) -> anyhow::Result<String> {
        self.inner_contract.send(signed_message).await
    }

    /// Refresh contract and update its data.
    /// Returns true or throw error.
    pub async fn refresh(&self) -> anyhow::Result<bool> {
        self.inner_contract.refresh().await
    }

    /// Preload transactions of contract.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        self.inner_contract.preload_transactions(from_lt).await
    }

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub async fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        self.inner_contract.handle_block(block).await
    }
}

/// Handler for GenericContract that calls dart methods and sends data
pub struct GenericContractSubscriptionHandlerImpl {
    pub instance_hash: String,
}

impl GenericContractSubscriptionHandler for GenericContractSubscriptionHandlerImpl {
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
    /// 0: list of Transaction
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<Transaction>,
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
