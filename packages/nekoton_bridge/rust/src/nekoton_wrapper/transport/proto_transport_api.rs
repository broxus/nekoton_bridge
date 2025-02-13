#![allow(unused_variables, dead_code)]

use flutter_rust_bridge::frb;

use crate::async_run;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::proto_connection_api::ProtoConnectionDartWrapper;
use crate::nekoton_wrapper::transport::{ProtoTransportBox, TransportBoxTrait};
use std::sync::Arc;

/// Wrapper structure above ProtoTransport that provides interface to communicate with it
/// via TransportBoxTrait.
pub struct ProtoTransportImpl {
    pub inner_transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
}

impl ProtoTransportImpl {
    #[frb(sync)]
    pub fn new(proto_connection: ProtoConnectionDartWrapper) -> ProtoTransportImpl {
        Self {
            inner_transport: ProtoTransportBox::create(
                proto_connection.get_connection().get_connection(),
            ),
        }
    }

    /// Get contract state of address and return json-encoded RawContractState or throw error
    pub fn get_contract_state(&self, address: String) -> anyhow::Result<String> {
        async_run!(self.inner_transport.get_contract_state(address).await)
    }

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    pub fn get_full_contract_state(&self, address: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_transport.get_full_contract_state(address).await)
    }

    /// Get list of accounts by code hash. Returns json-encoded AccountsList or throw error
    pub fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String> {
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
        from_lt: Option<String>,
        count: u8,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_transport
                .get_transactions(address, from_lt, count)
                .await
        )
    }

    /// Get single transaction by its hash.
    /// Return json-encoded Transaction or throw error
    pub fn get_transaction(&self, hash: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_transport.get_transaction(hash).await)
    }

    /// Call get_dst_transaction of nekoton's transport and
    /// return option json-encoded RawTransaction or throw error
    pub fn get_dst_transaction(&self, message_hash: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_transport.get_dst_transaction(message_hash).await)
    }

    /// Get transport signature id and return it or throw error
    pub fn get_signature_id(&self) -> anyhow::Result<Option<i32>> {
        async_run!(self.inner_transport.get_signature_id().await)
    }

    /// Get config of transport.
    /// Returns json-encoded BlockchainConfigDef or throw error
    pub fn get_blockchain_config(&self, force: bool) -> anyhow::Result<String> {
        async_run!(self.inner_transport.get_blockchain_config(force).await)
    }

    /// Get id of network or throw error
    pub fn get_network_id(&self) -> anyhow::Result<i32> {
        async_run!(self.inner_transport.get_network_id().await)
    }

    pub fn simulate_transaction_tree(
        &self,
        signed_message: String,
        ignored_compute_phase_codes: Vec<i32>,
        ignored_action_phase_codes: Vec<i32>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_transport
                .simulate_transaction_tree(
                    signed_message,
                    ignored_compute_phase_codes,
                    ignored_action_phase_codes
                )
                .await
        )
    }

    pub fn get_fee_factors(&self, is_masterchain: bool) -> anyhow::Result<String> {
        async_run!(self.inner_transport.get_fee_factors(is_masterchain).await)
    }
}
