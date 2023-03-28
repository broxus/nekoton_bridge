#![allow(unused_variables, dead_code)]

use crate::async_run;
use crate::nekoton_wrapper::external::jrpc_connection_api::JrpcConnectionDartWrapper;
use crate::nekoton_wrapper::transport::{JrpcTransportBox, TransportBoxTrait};
use flutter_rust_bridge::RustOpaque;
use std::sync::Arc;

/// Wrapper structure above JrpcTransport that provides interface to communicate with it
/// via TransportBoxTrait.
pub struct JrpcTransportImpl {
    pub inner_transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
}

impl JrpcTransportImpl {
    pub fn new(jrpc_connection: JrpcConnectionDartWrapper) -> JrpcTransportImpl {
        Self {
            inner_transport: JrpcTransportBox::create(
                jrpc_connection.get_connection().get_connection(),
            ),
        }
    }

    /// Get contract state of address and return json-encoded RawContractState or throw error
    pub fn get_contract_state(&self, address: String) -> anyhow::Result<String, anyhow::Error> {
        async_run!(self.inner_transport.get_contract_state(address).await)
    }

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    pub fn get_full_contract_state(
        &self,
        address: String,
    ) -> anyhow::Result<String, anyhow::Error> {
        async_run!(self.inner_transport.get_full_contract_state(address).await)
    }

    /// Get list of accounts by code hash. Returns json-encoded AccountsList or throw error
    pub fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String, anyhow::Error> {
        async_run!(
            self.inner_transport
                .get_accounts_by_code_hash(code_hash, limit, continuation)
                .await
        )
    }

    /// Get list of transactions by address.
    /// Return json-encoded TransactionsList or throw error
    pub fn get_transactions(
        &self,
        address: String,
        from_lt: Option<u64>,
        count: u8,
    ) -> anyhow::Result<String, anyhow::Error> {
        async_run!(
            self.inner_transport
                .get_transactions(address, from_lt, count)
                .await
        )
    }

    /// Get single transaction by its hash.
    /// Return json-encoded Transaction or throw error
    pub fn get_transaction(&self, hash: String) -> anyhow::Result<Option<String>, anyhow::Error> {
        async_run!(self.inner_transport.get_transaction(hash).await)
    }

    /// Get transport signature id and return it or throw error
    pub fn get_signature_id(&self) -> anyhow::Result<Option<i32>, anyhow::Error> {
        async_run!(self.inner_transport.get_signature_id().await)
    }
}
