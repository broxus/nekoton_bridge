#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::transport::models::{
    AccountsList, FullContractState, RawContractStateHelper, TransactionsList,
};
use crate::nekoton_wrapper::{parse_address, parse_hash, HandleError};
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::core::models::{Transaction, TransactionsBatchInfo, TransactionsBatchType};
use nekoton::external::{GqlConnection, ProtoConnection};
use nekoton::transport::gql::LatestBlock;
use nekoton::transport::models::RawContractState;
use nekoton::transport::{gql::GqlTransport, proto::ProtoTransport, Transport};
use nekoton_abi::TransactionId;
use nekoton_utils::SimpleClock;
use std::convert::TryFrom;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;
use std::time::Duration;
use ton_block::Serializable;

pub mod gql_transport_api;
pub mod models;
pub mod proto_transport_api;

/// This is a fucking hack that allows using nekoton::ProtoTransport or nekoton::GqlTransport in dart classes.
/// This is a trait-wrapper above real ProtoTransport or GqlTransport with UnwindSafe + RefUnwindSafe.
///
/// This class is a unification above proto or gql to allow re-use this trait as a single transport
/// without any differences for TonWallet or TokenWallet.
/// This allows using RustOpaque<Arc<dyn TransportBoxTrait>> in rust side to accept data from dart side.
#[async_trait]
pub trait TransportBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Get nekoton's transport. For rust side only
    fn get_transport(&self) -> Arc<dyn Transport>;

    /// Get contract state of address and return json-encoded RawContractState or throw error
    async fn get_contract_state(&self, address: String) -> anyhow::Result<String>;

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    async fn get_full_contract_state(&self, address: String) -> anyhow::Result<Option<String>>;

    /// Get list of accounts by code hash. Returns json-encoded AccountsList or throw error
    async fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String>;

    /// Get list of transactions by address.
    /// Return json-encoded TransactionsList or throw error
    async fn get_transactions(
        &self,
        address: String,
        from_lt: Option<u64>,
        count: u8,
    ) -> anyhow::Result<String>;

    /// Get single transaction by its id.
    /// Return json-encoded Transaction or throw error
    async fn get_transaction(&self, id: String) -> anyhow::Result<Option<String>>;

    /// Get transport signature id and return it or throw error
    async fn get_signature_id(&self) -> anyhow::Result<Option<i32>>;

    /// Get id of network or throw error
    async fn get_network_id(&self) -> anyhow::Result<i32>;

    /// Get latest block by address and return it or throw error
    async fn get_latest_block(&self, address: String) -> anyhow::Result<LatestBlock>;

    /// Get transport block by id and return base64 encoded block or throw error
    async fn get_block(&self, id: String) -> anyhow::Result<String>;

    /// Wait until next block will come to blockchain and return its id or throw error
    /// timeout - in milliseconds
    async fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> anyhow::Result<String>;
}

pub struct ProtoTransportBox {
    inner_transport: Arc<ProtoTransport>,
}

impl UnwindSafe for ProtoTransportBox {}

impl RefUnwindSafe for ProtoTransportBox {}

impl ProtoTransportBox {
    pub fn create(
        proto_connection: Arc<dyn ProtoConnection>,
    ) -> RustOpaque<Arc<dyn TransportBoxTrait>> {
        RustOpaque::new(Arc::new(Self {
            inner_transport: Arc::new(ProtoTransport::new(proto_connection)),
        }))
    }
}

#[async_trait]
impl TransportBoxTrait for ProtoTransportBox {
    /// Get nekoton's transport. For rust side only
    fn get_transport(&self) -> Arc<dyn Transport> {
        self.inner_transport.clone()
    }

    /// Get contract state of address and return json-encoded RawContractState or throw error
    async fn get_contract_state(&self, address: String) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let contract_state = self
            .inner_transport
            .get_contract_state(&address)
            .await
            .handle_error()?;

        serde_json::to_string(&RawContractStateHelper(contract_state)).handle_error()
    }

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    async fn get_full_contract_state(&self, address: String) -> anyhow::Result<Option<String>> {
        let address = parse_address(address)?;

        let raw_contract_state = self
            .inner_transport
            .get_contract_state(&address)
            .await
            .handle_error()?;

        let full_contract_state = match raw_contract_state {
            RawContractState::Exists(state) => {
                let boc = state
                    .account
                    .serialize()
                    .as_ref()
                    .map(ton_types::serialize_toc)
                    .handle_error()?
                    .map(base64::encode)
                    .handle_error()?;

                let is_deployed = matches!(
                    &state.account.storage.state,
                    ton_block::AccountState::AccountActive { state_init: _ }
                );

                Some(FullContractState {
                    balance: state.account.storage.balance.grams.as_u128().to_string(),
                    gen_timings: state.timings,
                    last_transaction_id: Some(state.last_transaction_id),
                    is_deployed,
                    code_hash: None,
                    boc,
                })
            }
            RawContractState::NotExists { timings } => None,
        };

        return match full_contract_state {
            None => Ok(None),
            Some(state) => Ok(Some(serde_json::to_string(&state).handle_error()?)),
        };
    }

    /// Get list of accounts by code hash. Returns json-encoded AccountsList of addresses of throw error
    async fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String> {
        let code_hash = parse_hash(code_hash)?;
        let continuation = continuation.map(parse_address).transpose()?;

        let accounts = self
            .inner_transport
            .get_accounts_by_code_hash(&code_hash, limit, &continuation)
            .await
            .handle_error()?;

        let accounts_list = AccountsList {
            accounts: accounts.clone(),
            continuation: accounts.last().cloned(),
        };

        serde_json::to_string(&accounts_list).handle_error()
    }

    /// Get list of transactions by address.
    /// Return json-encoded TransactionsList or throw error
    async fn get_transactions(
        &self,
        address: String,
        from_lt: Option<u64>,
        count: u8,
    ) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let from_lt = from_lt.unwrap_or(u64::MAX);

        let raw_transactions = self
            .inner_transport
            .get_transactions(&address, from_lt, count)
            .await
            .handle_error()?;

        let transactions = raw_transactions
            .clone()
            .into_iter()
            .filter_map(|e| Transaction::try_from((e.hash, e.data)).ok())
            .collect::<Vec<_>>();

        let continuation = raw_transactions.last().and_then(|e| {
            (e.data.prev_trans_lt != 0).then_some(TransactionId {
                lt: e.data.prev_trans_lt,
                hash: e.data.prev_trans_hash,
            })
        });

        let batch_info = match (raw_transactions.first(), raw_transactions.last()) {
            (Some(first), Some(last)) => Some(TransactionsBatchInfo {
                min_lt: last.data.lt,
                max_lt: first.data.lt,
                batch_type: TransactionsBatchType::New,
            }),
            _ => None,
        };

        let transactions_list = TransactionsList {
            transactions,
            continuation,
            info: batch_info,
        };

        serde_json::to_string(&transactions_list).handle_error()
    }

    /// Get single transaction by its id.
    /// Return json-encoded Transaction or throw error
    async fn get_transaction(&self, id: String) -> anyhow::Result<Option<String>> {
        let hash = parse_hash(id)?;

        let transaction = self
            .inner_transport
            .get_transaction(&hash)
            .await
            .handle_error()?
            .map(|e| Transaction::try_from((e.hash, e.data)))
            .transpose()
            .handle_error()?;

        match transaction {
            None => Ok(None),
            Some(_) => Ok(Some(serde_json::to_string(&transaction).handle_error()?)),
        }
    }

    /// Get transport signature id and return it or throw error
    async fn get_signature_id(&self) -> anyhow::Result<Option<i32>> {
        let id = self
            .inner_transport
            .get_capabilities(&SimpleClock)
            .await
            .handle_error()?
            .signature_id();
        Ok(id)
    }

    /// Get id of network or throw error
    async fn get_network_id(&self) -> anyhow::Result<i32> {
        let id = self
            .inner_transport
            .get_capabilities(&SimpleClock)
            .await
            .handle_error()?;
        Ok(id.global_id)
    }

    /// Not used in proto
    async fn get_latest_block(&self, address: String) -> anyhow::Result<LatestBlock> {
        Err(anyhow::Error::msg(
            "get_latest_block not implemented for ProtoTransportBox",
        ))
    }

    /// Not used in proto
    async fn get_block(&self, id: String) -> anyhow::Result<String> {
        Err(anyhow::Error::msg(
            "get_block not implemented for ProtoTransportBox",
        ))
    }

    /// Not used in proto
    async fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> anyhow::Result<String> {
        Err(anyhow::Error::msg(
            "wait_for_next_block not implemented for ProtoTransportBox",
        ))
    }
}

pub struct GqlTransportBox {
    inner_transport: Arc<GqlTransport>,
}

impl UnwindSafe for GqlTransportBox {}

impl RefUnwindSafe for GqlTransportBox {}

impl GqlTransportBox {
    pub fn create(
        gql_connection: Arc<dyn GqlConnection>,
    ) -> RustOpaque<Arc<dyn TransportBoxTrait>> {
        RustOpaque::new(Arc::new(Self {
            inner_transport: Arc::new(GqlTransport::new(gql_connection)),
        }))
    }
}

#[async_trait]
impl TransportBoxTrait for GqlTransportBox {
    /// Get nekoton's transport. For rust side only
    fn get_transport(&self) -> Arc<dyn Transport> {
        self.inner_transport.clone()
    }

    /// Get contract state of address and return json-encoded RawContractState or throw error
    async fn get_contract_state(&self, address: String) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let contract_state = self
            .inner_transport
            .get_contract_state(&address)
            .await
            .handle_error()?;

        serde_json::to_string(&RawContractStateHelper(contract_state)).handle_error()
    }

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    async fn get_full_contract_state(&self, address: String) -> anyhow::Result<Option<String>> {
        let address = parse_address(address)?;

        let raw_contract_state = self
            .inner_transport
            .get_contract_state(&address)
            .await
            .handle_error()?;

        let full_contract_state = match raw_contract_state {
            RawContractState::Exists(state) => {
                let boc = state
                    .account
                    .serialize()
                    .as_ref()
                    .map(ton_types::serialize_toc)
                    .handle_error()?
                    .map(base64::encode)
                    .handle_error()?;

                let is_deployed = matches!(
                    &state.account.storage.state,
                    ton_block::AccountState::AccountActive { state_init: _ }
                );

                Some(FullContractState {
                    balance: state.account.storage.balance.grams.as_u128().to_string(),
                    gen_timings: state.timings,
                    last_transaction_id: Some(state.last_transaction_id),
                    is_deployed,
                    code_hash: None,
                    boc,
                })
            }
            RawContractState::NotExists { timings } => None,
        };

        return match full_contract_state {
            None => Ok(None),
            Some(state) => Ok(Some(serde_json::to_string(&state).handle_error()?)),
        };
    }

    /// Get list of accounts by code hash. Returns json-encoded AccountsList of addresses of throw error
    async fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String> {
        let code_hash = parse_hash(code_hash)?;
        let continuation = continuation.map(parse_address).transpose()?;

        let accounts = self
            .inner_transport
            .get_accounts_by_code_hash(&code_hash, limit, &continuation)
            .await
            .handle_error()?;

        let accounts_list = AccountsList {
            accounts: accounts.clone(),
            continuation: accounts.last().cloned(),
        };

        serde_json::to_string(&accounts_list).handle_error()
    }

    /// Get list of transactions by address.
    /// Return json-encoded TransactionsList or throw error
    async fn get_transactions(
        &self,
        address: String,
        from_lt: Option<u64>,
        count: u8,
    ) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let from_lt = from_lt.unwrap_or(u64::MAX);

        let raw_transactions = self
            .inner_transport
            .get_transactions(&address, from_lt, count)
            .await
            .handle_error()?;

        let transactions = raw_transactions
            .clone()
            .into_iter()
            .filter_map(|e| Transaction::try_from((e.hash, e.data)).ok())
            .collect::<Vec<_>>();

        let continuation = raw_transactions.last().and_then(|e| {
            (e.data.prev_trans_lt != 0).then_some(TransactionId {
                lt: e.data.prev_trans_lt,
                hash: e.data.prev_trans_hash,
            })
        });

        let batch_info = match (raw_transactions.first(), raw_transactions.last()) {
            (Some(first), Some(last)) => Some(TransactionsBatchInfo {
                min_lt: last.data.lt,
                max_lt: first.data.lt,
                batch_type: TransactionsBatchType::New,
            }),
            _ => None,
        };

        let transactions_list = TransactionsList {
            transactions,
            continuation,
            info: batch_info,
        };

        serde_json::to_string(&transactions_list).handle_error()
    }

    /// Get single transaction by its id.
    /// Return json-encoded Transaction or throw error
    async fn get_transaction(&self, id: String) -> anyhow::Result<Option<String>> {
        let hash = parse_hash(id)?;

        let transaction = self
            .inner_transport
            .get_transaction(&hash)
            .await
            .handle_error()?
            .map(|e| Transaction::try_from((e.hash, e.data)))
            .transpose()
            .handle_error()?;
        match transaction {
            None => Ok(None),
            Some(_) => Ok(Some(serde_json::to_string(&transaction).handle_error()?)),
        }
    }

    /// Get transport signature id and return it or throw error
    async fn get_signature_id(&self) -> anyhow::Result<Option<i32>> {
        let id = self
            .inner_transport
            .get_capabilities(&SimpleClock)
            .await
            .handle_error()?
            .signature_id();
        Ok(id)
    }

    /// Get id of network or throw error
    async fn get_network_id(&self) -> anyhow::Result<i32> {
        let id = self
            .inner_transport
            .get_capabilities(&SimpleClock)
            .await
            .handle_error()?;
        Ok(id.global_id)
    }

    /// Get latest block by address and return it or throw error
    async fn get_latest_block(&self, address: String) -> anyhow::Result<LatestBlock> {
        let address = parse_address(address)?;

        let latest_block_id = self
            .inner_transport
            .get_latest_block(&address)
            .await
            .handle_error()?;

        Ok(latest_block_id)
    }

    /// Get transport block by id and return base64 encoded block or throw error
    async fn get_block(&self, id: String) -> anyhow::Result<String> {
        let block = self.inner_transport.get_block(&id).await.handle_error()?;

        let block = block
            .serialize()
            .as_ref()
            .map(ton_types::serialize_toc)
            .handle_error()?
            .map(base64::encode)
            .handle_error()?;

        Ok(block)
    }

    /// Wait until next block will come to blockchain and return its id or throw error
    /// timeout - in milliseconds
    async fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let timeout = Duration::from_millis(timeout);

        let next_block_id = self
            .inner_transport
            .wait_for_next_block(&current_block_id, &address, timeout)
            .await
            .handle_error()?;

        Ok(next_block_id)
    }
}
