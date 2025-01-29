#![allow(unused_variables, dead_code)]

use crate::clock;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::transport::models::{
    AccountsList, RawContractStateHelper, TransactionsList,
};
use crate::nekoton_wrapper::{
    helpers::{make_boc, make_full_contract_state},
    parse_address, parse_hash, HandleError,
};
use async_trait::async_trait;
use base64::engine::general_purpose;
use base64::Engine;
use duplicate::duplicate_item;
use nekoton::core::models::{Transaction, TransactionsBatchInfo, TransactionsBatchType};
use nekoton::crypto::SignedMessage;
use nekoton::external::{GqlConnection, JrpcConnection, ProtoConnection};
use nekoton::transport::gql::LatestBlock;
use nekoton::transport::{
    gql::GqlTransport, jrpc::JrpcTransport, proto::ProtoTransport, Transport,
};
use nekoton_abi::TransactionId;
use nekoton_utils::SimpleClock;
use std::convert::TryFrom;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;
use std::time::Duration;
use ton_block::Serializable;

use self::models::{BlockchainConfigDef, RawTransactionDef};

pub mod gql_transport_api;
pub mod jrpc_transport_api;
pub mod models;
pub mod proto_transport_api;

/// This is a fucking hack that allows using nekoton::ProtoTransport, nekoton::JrpcTransport or nekoton::GqlTransport in dart classes.
/// This is a trait-wrapper above real ProtoTransport, JrpcTransport or GqlTransport with UnwindSafe + RefUnwindSafe.
///
/// This class is a unification above proto, jrpc or gql to allow re-use this trait as a single transport
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
        from_lt: Option<String>,
        count: u8,
    ) -> anyhow::Result<String>;

    /// Get single transaction by its id.
    /// Return json-encoded Transaction or throw error
    async fn get_transaction(&self, id: String) -> anyhow::Result<Option<String>>;

    /// Call get_dst_transaction of nekoton's transport and
    /// return option json-encoded RawTransaction or throw error
    async fn get_dst_transaction(&self, message_hash: String) -> anyhow::Result<Option<String>>;

    /// Get transport signature id and return it or throw error
    async fn get_signature_id(&self) -> anyhow::Result<Option<i32>>;

    /// Get config of transport.
    /// Returns json-encoded BlockchainConfig or throw error
    async fn get_blockchain_config(&self, force: bool) -> anyhow::Result<String>;

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

    async fn simulate_transaction_tree(
        &self,
        signed_message: String,
        ignored_compute_phase_codes: Vec<i32>,
        ignored_action_phase_codes: Vec<i32>,
    ) -> anyhow::Result<String>;
}

pub struct ProtoTransportBox {
    inner_transport: Arc<ProtoTransport>,
}

pub struct JrpcTransportBox {
    inner_transport: Arc<JrpcTransport>,
}

impl UnwindSafe for ProtoTransportBox {}

impl UnwindSafe for JrpcTransportBox {}

impl RefUnwindSafe for ProtoTransportBox {}

impl RefUnwindSafe for JrpcTransportBox {}

impl ProtoTransportBox {
    pub fn create(
        proto_connection: Arc<dyn ProtoConnection>,
    ) -> RustOpaque<Arc<dyn TransportBoxTrait>> {
        RustOpaque::new(Arc::new(Self {
            inner_transport: Arc::new(ProtoTransport::new(proto_connection)),
        }))
    }
}

impl JrpcTransportBox {
    pub fn create(
        jrpc_connection: Arc<dyn JrpcConnection>,
    ) -> RustOpaque<Arc<dyn TransportBoxTrait>> {
        RustOpaque::new(Arc::new(Self {
            inner_transport: Arc::new(JrpcTransport::new(jrpc_connection)),
        }))
    }
}

#[async_trait]
#[duplicate_item(name; [ProtoTransportBox]; [JrpcTransportBox])]
impl TransportBoxTrait for name {
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

        make_full_contract_state(raw_contract_state)
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
        from_lt: Option<String>,
        count: u8,
    ) -> anyhow::Result<String> {
        let address = parse_address(address)?;
        let from_lt = match from_lt {
            None => u128::MAX,
            Some(amount) => amount.parse::<u128>().handle_error()?,
        };

        let raw_transactions = self
            .inner_transport
            .get_transactions(&address, from_lt, count)
            .await
            .handle_error()?;

        let transactions = raw_transactions
            .clone()
            .into_iter()
            .map(|e| convert_transaction_to_json(&Transaction::try_from((e.hash, e.data))?))
            .collect::<anyhow::Result<Vec<_>>>();
        let transactions = transactions?;

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
            Some(t) => Ok(Some(serde_json::to_string(&convert_transaction_to_json(
                &t,
            )?)?)),
        }
    }

    /// Call get_dst_transaction of nekoton's transport and
    /// return option json-encoded RawTransaction or throw error
    async fn get_dst_transaction(&self, message_hash: String) -> anyhow::Result<Option<String>> {
        let hash = parse_hash(message_hash)?;
        let transaction = self
            .inner_transport
            .get_dst_transaction(&hash)
            .await
            .handle_error()?;

        match transaction {
            None => Ok(None),
            Some(t) => {
                let trans = RawTransactionDef {
                    hash,
                    data: convert_transaction_to_json(&Transaction::try_from((t.hash, t.data))?)?,
                };
                Ok(Some(serde_json::to_string(&trans).handle_error()?))
            }
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

    /// Get config of transport.
    /// Returns json-encoded BlockchainConfigDef or throw error
    async fn get_blockchain_config(&self, force: bool) -> anyhow::Result<String> {
        let config: ton_executor::BlockchainConfig = self
            .inner_transport
            .get_blockchain_config(clock!().as_ref(), force)
            .await
            .handle_error()?;

        let result: BlockchainConfigDef = BlockchainConfigDef {
            capabilities: config.capabilites(),
            global_version: config.global_version(),
            global_id: config.global_id(),
            config: config.raw_config().clone(),
        };
        serde_json::to_string(&result).handle_error()
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

    /// Not used in proto and jrpc
    async fn get_latest_block(&self, address: String) -> anyhow::Result<LatestBlock> {
        Err(anyhow::Error::msg(
            "get_latest_block not implemented for ProtoTransportBox and JrpcTransportBox",
        ))
    }

    /// Not used in proto and jrpc
    async fn get_block(&self, id: String) -> anyhow::Result<String> {
        Err(anyhow::Error::msg(
            "get_block not implemented for ProtoTransportBox and JrpcTransportBox",
        ))
    }

    /// Not used in proto and jrpc
    async fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> anyhow::Result<String> {
        Err(anyhow::Error::msg(
            "wait_for_next_block not implemented for ProtoTransportBox and JrpcTransportBox",
        ))
    }

    async fn simulate_transaction_tree(
        &self,
        signed_message: String,
        ignored_compute_phase_codes: Vec<i32>,
        ignored_action_phase_codes: Vec<i32>,
    ) -> anyhow::Result<String> {
        simulate_transaction_tree(
            self.get_transport(),
            signed_message,
            ignored_compute_phase_codes,
            ignored_action_phase_codes,
        )
        .await
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

        make_full_contract_state(raw_contract_state)
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
        from_lt: Option<String>,
        count: u8,
    ) -> anyhow::Result<String> {
        let address = parse_address(address)?;

        let from_lt = match from_lt {
            None => u128::MAX,
            Some(amount) => amount.parse::<u128>().handle_error()?,
        };

        let raw_transactions = self
            .inner_transport
            .get_transactions(&address, from_lt, count)
            .await
            .handle_error()?;

        let transactions = raw_transactions
            .clone()
            .into_iter()
            .map(|e| convert_transaction_to_json(&Transaction::try_from((e.hash, e.data))?))
            .collect::<anyhow::Result<Vec<_>>>();
        let transactions = transactions?;

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
            Some(t) => Ok(Some(serde_json::to_string(&convert_transaction_to_json(
                &t,
            )?)?)),
        }
    }

    /// Call get_dst_transaction of nekoton's transport and
    /// return option json-encoded RawTransaction or throw error
    async fn get_dst_transaction(&self, message_hash: String) -> anyhow::Result<Option<String>> {
        let hash = parse_hash(message_hash)?;
        let transaction = self
            .inner_transport
            .get_dst_transaction(&hash)
            .await
            .handle_error()?;

        match transaction {
            None => Ok(None),
            Some(t) => {
                let trans = RawTransactionDef {
                    hash,
                    data: convert_transaction_to_json(&Transaction::try_from((t.hash, t.data))?)?,
                };
                Ok(Some(serde_json::to_string(&trans).handle_error()?))
            }
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

    /// Get config of transport.
    /// Returns json-encoded BlockchainConfigDef or throw error
    async fn get_blockchain_config(&self, force: bool) -> anyhow::Result<String> {
        let config: ton_executor::BlockchainConfig = self
            .inner_transport
            .get_blockchain_config(clock!().as_ref(), force)
            .await
            .handle_error()?;

        let result: BlockchainConfigDef = BlockchainConfigDef {
            capabilities: config.capabilites(),
            global_version: config.global_version(),
            global_id: config.global_id(),
            config: config.raw_config().clone(),
        };
        serde_json::to_string(&result).handle_error()
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
            .map(|data| general_purpose::STANDARD.encode(data))
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

    async fn simulate_transaction_tree(
        &self,
        signed_message: String,
        ignored_compute_phase_codes: Vec<i32>,
        ignored_action_phase_codes: Vec<i32>,
    ) -> anyhow::Result<String> {
        simulate_transaction_tree(
            self.get_transport(),
            signed_message,
            ignored_compute_phase_codes,
            ignored_action_phase_codes,
        )
        .await
    }
}

pub fn convert_transaction_to_json(t: &Transaction) -> anyhow::Result<serde_json::Value> {
    Ok(serde_json::json!({
        "id" : t.id,
        "prevTransId": t.prev_trans_id,
        "createdAt": t.created_at,
        "aborted": t.aborted,
        "exitCode": t.exit_code,
        "resultCode": t.result_code,
        "origStatus":t.orig_status,
        "endStatus":t.end_status,
        "totalFees" : t.total_fees.to_string(),
        "inMessage": t.in_msg,
        "outMessages": t.out_msgs,
        "boc": make_boc(&t.raw)?,
    }))
}

enum TxTreeSimulationError {
    ComputePhase { code: i32 },
    ActionPhase { code: i32 },
    Frozen,
    Deleted,
}

fn make_tx_tree_simulation_error(
    address: &ton_block::MsgAddressInt,
    error: &TxTreeSimulationError,
) -> anyhow::Result<serde_json::Value> {
    let error = match error {
        TxTreeSimulationError::ComputePhase { code } => serde_json::json!({
            "type" : "compute_phase",
            "code": *code,
        }),
        TxTreeSimulationError::ActionPhase { code } => serde_json::json!({
            "type" : "action_phase",
            "code": *code,
        }),
        TxTreeSimulationError::Frozen => serde_json::json!({
            "type" : "frozen",
        }),
        TxTreeSimulationError::Deleted => serde_json::json!({
            "type" : "deleted",
        }),
    };

    Ok(serde_json::json!({
        "address" : address.to_string(),
        "error": error,
    }))
}

async fn simulate_transaction_tree(
    transport: Arc<dyn Transport>,
    signed_message: String,
    ignored_compute_phase_codes: Vec<i32>,
    ignored_action_phase_codes: Vec<i32>,
) -> anyhow::Result<String> {
    let signed_message = serde_json::from_str::<SignedMessage>(&signed_message).handle_error()?;

    async fn simulate_transaction_tree(
        stream: &mut nekoton::core::transactions_tree::TransactionsTreeStream,
        ignored_compute_phase_codes: &[i32],
        ignored_action_phase_codes: &[i32],
    ) -> anyhow::Result<Vec<(ton_block::MsgAddressInt, TxTreeSimulationError)>> {
        let mut result = Vec::new();

        // FIXME: disable only for the first message
        stream.disable_signature_check();

        'stream: while let Some(tx) = stream.next().await? {
            let address = 'address: {
                if let Some(in_msg) = &tx.in_msg {
                    if let Some(dst) = in_msg.read_struct()?.dst() {
                        break 'address dst;
                    }
                }
                continue 'stream;
            };

            if tx.end_status == ton_block::AccountStatus::AccStateFrozen {
                result.push((address, TxTreeSimulationError::Frozen));
                continue;
            } else if tx.orig_status == ton_block::AccountStatus::AccStateFrozen
                && tx.end_status == ton_block::AccountStatus::AccStateNonexist
            {
                result.push((address, TxTreeSimulationError::Deleted));
                continue;
            }

            let ton_block::TransactionDescr::Ordinary(descr) = tx.read_description()? else {
                continue;
            };

            if let ton_block::TrComputePhase::Vm(compute) = descr.compute_ph {
                if !compute.success && !ignored_compute_phase_codes.contains(&compute.exit_code) {
                    result.push((
                        address,
                        TxTreeSimulationError::ComputePhase {
                            code: compute.exit_code,
                        },
                    ));
                    continue;
                }
            }

            if let Some(action) = descr.action {
                if !action.success && !ignored_action_phase_codes.contains(&action.result_code) {
                    result.push((
                        address,
                        TxTreeSimulationError::ActionPhase {
                            code: action.result_code,
                        },
                    ));
                    continue;
                }
            }
        }

        Ok(result)
    }

    let config = transport
        .get_blockchain_config(clock!().as_ref(), false)
        .await
        .handle_error()?;

    let mut transactions_tree = nekoton::core::transactions_tree::TransactionsTreeStream::new(
        signed_message.message,
        config,
        transport,
        clock!(),
    );
    let errors = simulate_transaction_tree(
        &mut transactions_tree,
        &ignored_compute_phase_codes,
        &ignored_action_phase_codes,
    )
    .await
    .handle_error()?;

    let result = errors
        .into_iter()
        .map(|(address, error)| make_tx_tree_simulation_error(&address, &error))
        .collect::<anyhow::Result<Vec<_>>>();
    let result = result?;

    serde_json::to_string(&result).handle_error()
}
