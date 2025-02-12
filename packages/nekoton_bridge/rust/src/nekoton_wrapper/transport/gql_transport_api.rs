#![allow(unused_variables, dead_code)]

use crate::async_run;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::gql_connection_api::GqlConnectionDartWrapper;
use crate::nekoton_wrapper::transport::{GqlTransportBox, TransportBoxTrait};
use flutter_rust_bridge::frb;
pub use nekoton::transport::gql::LatestBlock;
use std::sync::Arc;

#[frb(mirror(LatestBlock))]
pub struct _LatestBlock {
    pub id: String,
    pub end_lt: u64,
    pub gen_utime: u32,
}

/// Wrapper structure above GqlTransport that provides interface to communicate with it
/// via TransportBoxTrait.
pub struct GqlTransportImpl {
    pub inner_transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
}

impl GqlTransportImpl {
    #[frb(sync)]
    pub fn new(gql_connection: GqlConnectionDartWrapper) -> GqlTransportImpl {
        Self {
            inner_transport: GqlTransportBox::create(
                gql_connection.get_connection().get_connection(),
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

    /// Get latest block by address and return it or throw error
    pub fn get_latest_block(&self, address: String) -> anyhow::Result<LatestBlock> {
        async_run!(self.inner_transport.get_latest_block(address).await)
    }

    /// Get transport block by id and return base64 encoded block or throw error
    pub fn get_block(&self, id: String) -> anyhow::Result<String> {
        async_run!(self.inner_transport.get_block(id).await)
    }

    /// Wait until next block will come to blockchain and return its id or throw error
    /// timeout - in milliseconds
    pub fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_transport
                .wait_for_next_block(current_block_id, address, timeout)
                .await
        )
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

    pub fn get_fee_factors(&self, is_masterchain: bool) -> anyhow::Result<serde_json::Value> {
        async_run!(self.inner_transport.get_fee_factors(is_masterchain).await)
    }
}
