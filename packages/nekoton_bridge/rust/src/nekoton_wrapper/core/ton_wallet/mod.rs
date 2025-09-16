#![allow(unused_variables, dead_code, clippy::too_many_arguments)]

use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;

pub mod models;
pub mod ton_wallet_api;
use crate::clock;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::core::ton_wallet::models::{
    ExistingWalletInfoHelper, WalletTypeHelper,
};
use crate::nekoton_wrapper::crypto::models::{UnsignedMessageBox, UnsignedMessageBoxTrait};
use crate::nekoton_wrapper::helpers::serialize_into_boc;
use crate::nekoton_wrapper::transport::models::RawContractStateHelper;
use crate::nekoton_wrapper::{parse_address, parse_public_key, HandleError};
use async_trait::async_trait;
use base64::engine::general_purpose;
use base64::Engine;
use models::TonWalletTransferParams;
use nekoton::core::models::{Expiration, MessageFlags, PollingMethod};
use nekoton::core::ton_wallet::{
    extract_wallet_init_data, find_existing_wallets, get_wallet_custodians, ExistingWalletInfo,
    Gift, TonWallet, TonWalletSubscriptionHandler, TransferAction,
};
use nekoton::core::TransactionExecutionOptions;
use nekoton::crypto::SignedMessage;
use nekoton::transport::Transport;
use nekoton_abi::create_boc_or_comment_payload;
use nekoton_utils::compute_total_transaction_fees;
use tokio::sync::Mutex;
use ton_block::{Block, Deserializable};
use ton_types::BuilderData;

/// This is a fucking hack that allows using nekoton::TonWallet in dart classes.
/// This is a trait-wrapper above real TonWallet with UnwindSafe + RefUnwindSafe.
#[async_trait]
pub trait TonWalletBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Get workchain of wallet.
    async fn workchain(&self) -> i8;

    /// Get address of wallet.
    async fn address(&self) -> String;

    /// Get public key of wallet.
    async fn public_key(&self) -> String;

    /// Get json-encoded WalletType or throw error.
    async fn wallet_type(&self) -> anyhow::Result<String>;

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String>;

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> anyhow::Result<String>;

    /// Get json-encoded PollingMethod of wallet or throw error.
    async fn polling_method(&self) -> PollingMethod;

    /// Get json-encoded TonWalletDetails or throw error.
    async fn details(&self) -> anyhow::Result<String>;

    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    async fn unconfirmed_transactions(&self) -> anyhow::Result<String>;

    /// Get optional list of custodians.
    /// Returns list of public keys.
    async fn custodians(&self) -> Option<Vec<String>>;

    /// Prepare TonWallet for deploy action.
    /// expiration - json-encoded Expiration.
    /// Returns UnsignedMessage or throw error.
    async fn prepare_deploy(
        &self,
        expiration: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>>;

    /// Prepare TonWallet for deploy actions if wallet is multisig.
    /// expiration - json-encoded Expiration.
    /// custodians - list of public keys of custodians.
    /// req_confirms - count of required confirmations from 1 to custodians count
    /// Returns UnsignedMessage or throw error.
    async fn prepare_deploy_with_multiple_owners(
        &self,
        expiration: String,
        custodians: Vec<String>,
        req_confirms: u8,
        expiration_time: Option<u32>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>>;

    /// Prepare transferring tokens from this wallet to other.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// expiration - json-encoded Expiration
    /// params - json-encoded list of TonWalletTransferParams
    /// Returns UnsignedMessage or throw error.
    async fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>>;

    async fn prepare_wallet_v5r1_message_body(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)>;

    async fn prepare_nonexist_wallet_v5r1_message_body(
        &self,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)>;

    /// Prepare transaction for confirmation.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// transaction_id - id of transaction.
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    async fn prepare_confirm_transaction(
        &self,
        contract_state: String,
        public_key: String,
        transaction_id: String,
        expiration: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>>;

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// execution_options - json-encoded TransactionExecutionOptions.
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(
        &self,
        signed_message: String,
        execution_options: Option<String>,
    ) -> anyhow::Result<String>;

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    async fn send(&self, signed_message: String) -> anyhow::Result<String>;

    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    async fn refresh(&self) -> anyhow::Result<bool>;

    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool>;

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    async fn handle_block(&self, block: String) -> anyhow::Result<bool>;

    async fn make_state_init(&self) -> anyhow::Result<String>;

    async fn get_wallet_v5r1_seqno(
        &self,
        raw_current_state: String,
        public_key: String,
    ) -> anyhow::Result<u32>;
}

pub struct TonWalletBox {
    inner_wallet: Arc<Mutex<TonWallet>>,
}

impl TonWalletBox {
    /// Create TonWallet by subscribing to its instance by public_key.
    /// wallet_type - is json-encoded WalletType.
    /// public_key - is string representation of key
    pub async fn subscribe(
        transport: Arc<dyn Transport>,
        workchain_id: i8,
        public_key: String,
        wallet_type: String,
        handler: Arc<dyn TonWalletSubscriptionHandler>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>> {
        let public_key = parse_public_key(public_key).handle_error()?;

        let contract = serde_json::from_str::<WalletTypeHelper>(&wallet_type)
            .map(|WalletTypeHelper(wallet_type)| wallet_type)
            .handle_error()?;

        let ton_wallet = TonWallet::subscribe(
            clock!(),
            transport,
            workchain_id,
            public_key,
            contract,
            handler,
        )
        .await
        .handle_error()?;

        Ok(RustOpaque::new(Arc::new(TonWalletBox {
            inner_wallet: Arc::new(Mutex::new(ton_wallet)),
        })))
    }

    /// Create TonWallet by subscribing to its instance by address of wallet.
    pub async fn subscribe_by_address(
        transport: Arc<dyn Transport>,
        address: String,
        handler: Arc<dyn TonWalletSubscriptionHandler>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>> {
        let address = parse_address(address)?;

        let ton_wallet = TonWallet::subscribe_by_address(clock!(), transport, address, handler)
            .await
            .handle_error()?;

        Ok(RustOpaque::new(Arc::new(TonWalletBox {
            inner_wallet: Arc::new(Mutex::new(ton_wallet)),
        })))
    }

    /// Create TonWallet by subscribing to its instance by existed instance.
    /// existing_wallet - json-encoded ExistingWalletInfo.
    pub async fn subscribe_by_existing(
        transport: Arc<dyn Transport>,
        existing_wallet: String,
        handler: Arc<dyn TonWalletSubscriptionHandler>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>> {
        let existing_wallet = serde_json::from_str::<ExistingWalletInfoHelper>(&existing_wallet)
            .map(|ExistingWalletInfoHelper(existing_wallet_info)| existing_wallet_info)
            .handle_error()?;

        let ton_wallet =
            TonWallet::subscribe_by_existing(clock!(), transport, existing_wallet, handler)
                .await
                .handle_error()?;

        Ok(RustOpaque::new(Arc::new(TonWalletBox {
            inner_wallet: Arc::new(Mutex::new(ton_wallet)),
        })))
    }

    pub fn append_signature_to_wallet_v5r1_payload(
        payload: String,
        base64_signature: String,
    ) -> anyhow::Result<String> {
        let signature = general_purpose::STANDARD
            .decode(&base64_signature)
            .handle_error()?;
        if signature.len() != ed25519_dalek::SIGNATURE_LENGTH {
            return Err("Signature has invalid length").handle_error();
        }
        let payload = general_purpose::STANDARD.decode(&payload).handle_error()?;

        let cell = ton_types::deserialize_tree_of_cells(&mut payload.as_slice()).handle_error()?;
        let mut builder = BuilderData::from_cell(&cell);
        builder
            .append_raw(signature.as_slice(), signature.len() * 8)
            .handle_error()?;
        let signed_payload = builder.into_cell().handle_error()?;
        let result = ton_types::serialize_toc(&signed_payload).handle_error()?;
        Ok(general_purpose::STANDARD.encode(result))
    }
}

impl UnwindSafe for TonWalletBox {}
impl RefUnwindSafe for TonWalletBox {}

#[async_trait]
impl TonWalletBoxTrait for TonWalletBox {
    /// Get workchain of wallet.
    async fn workchain(&self) -> i8 {
        self.inner_wallet.lock().await.workchain()
    }

    /// Get address of wallet.
    async fn address(&self) -> String {
        self.inner_wallet.lock().await.address().to_string()
    }

    /// Get public key of wallet.
    async fn public_key(&self) -> String {
        hex::encode(self.inner_wallet.lock().await.public_key().to_bytes())
    }

    /// Get json-encoded WalletType or throw error.
    async fn wallet_type(&self) -> anyhow::Result<String> {
        let contract = self.inner_wallet.lock().await.wallet_type();
        serde_json::to_string(&WalletTypeHelper(contract)).handle_error()
    }

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        let contract_state = wallet.contract_state();
        serde_json::to_string(contract_state).handle_error()
    }

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        let pending_transactions = wallet.pending_transactions();
        serde_json::to_string(pending_transactions).handle_error()
    }

    /// Get json-encoded PollingMethod of wallet or throw error.
    async fn polling_method(&self) -> PollingMethod {
        self.inner_wallet.lock().await.polling_method()
    }

    /// Get json-encoded TonWalletDetails or throw error.
    async fn details(&self) -> anyhow::Result<String> {
        let details = self.inner_wallet.lock().await.details();
        serde_json::to_string(&details).handle_error()
    }

    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    async fn unconfirmed_transactions(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        let transactions = wallet.get_unconfirmed_transactions();
        serde_json::to_string(transactions).handle_error()
    }

    /// Get optional list of custodians.
    /// Returns list of public keys.
    async fn custodians(&self) -> Option<Vec<String>> {
        self.inner_wallet
            .lock()
            .await
            .get_custodians()
            .to_owned()
            .map(|e| e.iter().map(|e| e.to_hex_string()).collect::<Vec<_>>())
    }

    /// Prepare TonWallet for deploy action.
    /// expiration - json-encoded Expiration.
    /// Returns UnsignedMessage or throw error.
    async fn prepare_deploy(
        &self,
        expiration: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>> {
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;

        let unsigned_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_deploy(expiration)
            .handle_error()?;

        Ok(UnsignedMessageBox::create(unsigned_message))
    }

    /// Prepare TonWallet for deploy actions if wallet is multisig.
    /// expiration - json-encoded Expiration.
    /// custodians - list of public keys of custodians.
    /// req_confirms - count of required confirmations from 1 to custodians count
    /// Returns UnsignedMessage or throw error.
    async fn prepare_deploy_with_multiple_owners(
        &self,
        expiration: String,
        custodians: Vec<String>,
        req_confirms: u8,
        expiration_time: Option<u32>,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>> {
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;

        let custodians = custodians
            .into_iter()
            .map(parse_public_key)
            .collect::<anyhow::Result<Vec<_>>>()
            .handle_error()?;

        let unsigned_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_deploy_with_multiple_owners(
                expiration,
                &custodians,
                req_confirms,
                expiration_time,
            )
            .handle_error()?;

        Ok(UnsignedMessageBox::create(unsigned_message))
    }

    /// Prepare transferring tokens from this wallet to other.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// expiration - json-encoded Expiration
    /// params - json-encoded list of TonWalletTransferParams
    /// Returns UnsignedMessage or throw error.
    async fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>> {
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists { timings } => {
                return Err("Not exists").handle_error();
            }
            nekoton::transport::models::RawContractState::Exists(contract) => contract.account,
        };

        let public_key = parse_public_key(public_key).handle_error()?;
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;
        let gifts = parse_gift_params(params)?;

        let action = self
            .inner_wallet
            .lock()
            .await
            .prepare_transfer(&current_state, &public_key, gifts, expiration)
            .handle_error()?;

        let unsigned_message = match action {
            TransferAction::DeployFirst => return Err("Deploy first").handle_error(),
            TransferAction::Sign(unsigned_message) => unsigned_message,
        };

        Ok(UnsignedMessageBox::create(unsigned_message))
    }

    async fn prepare_wallet_v5r1_message_body(
        &self,
        contract_state: String,
        public_key: String,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)> {
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists { timings } => {
                return Err("Not exists").handle_error();
            }
            nekoton::transport::models::RawContractState::Exists(contract) => contract.account,
        };

        let public_key = parse_public_key(public_key).handle_error()?;
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;
        let gifts = parse_gift_params(params)?;

        let (hash, body) = self
            .inner_wallet
            .lock()
            .await
            .make_unsigned_wallet_v5_transfer_payload(
                &current_state,
                &public_key,
                gifts,
                expiration,
                is_internal_flow,
            )
            .handle_error()?;

        let hash = hash.to_hex_string();

        let payload_cell = body.into_cell().handle_error()?;
        let payload_bytes = ton_types::serialize_toc(&payload_cell).handle_error()?;
        let payload_string = general_purpose::STANDARD.encode(&payload_bytes);

        Ok((hash, payload_string))
    }

    async fn prepare_nonexist_wallet_v5r1_message_body(
        &self,
        expiration: String,
        params: String,
        is_internal_flow: bool,
    ) -> anyhow::Result<(String, String)> {
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;
        let gifts = parse_gift_params(params)?;

        let wallet = self.inner_wallet.lock().await;
        let state_init = wallet.make_state_init().handle_error()?;
        let (hash, body) = wallet
            .make_unsigned_new_wallet_v5_transfer_payload(
                &state_init,
                gifts,
                expiration,
                is_internal_flow,
            )
            .handle_error()?;

        let hash = hash.to_hex_string();

        let payload_cell = body.into_cell().handle_error()?;
        let payload_bytes = ton_types::serialize_toc(&payload_cell).handle_error()?;
        let payload_string = general_purpose::STANDARD.encode(&payload_bytes);

        Ok((hash, payload_string))
    }

    /// Prepare transaction for confirmation.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// transaction_id - id of transaction.
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    async fn prepare_confirm_transaction(
        &self,
        contract_state: String,
        public_key: String,
        transaction_id: String,
        expiration: String,
    ) -> anyhow::Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>> {
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists { timings } => {
                return Err("Not exists").handle_error();
            }
            nekoton::transport::models::RawContractState::Exists(contract) => contract.account,
        };

        let public_key = parse_public_key(public_key).handle_error()?;

        let transaction_id = transaction_id.parse::<u64>().handle_error()?;

        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;

        let unsigned_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_confirm_transaction(&current_state, &public_key, transaction_id, expiration)
            .handle_error()?;

        Ok(UnsignedMessageBox::create(unsigned_message))
    }

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// execution_options - json-encoded TransactionExecutionOptions.
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(
        &self,
        signed_message: String,
        execution_options: Option<String>,
    ) -> anyhow::Result<String> {
        let message = serde_json::from_str::<SignedMessage>(&signed_message)
            .handle_error()?
            .message;
        let execution_options = match execution_options {
            Some(execution_options) => {
                serde_json::from_str::<TransactionExecutionOptions>(&execution_options)
                    .handle_error()?
            }
            None => TransactionExecutionOptions {
                disable_signature_check: true,
                override_balance: None,
            },
        };

        let transaction = self
            .inner_wallet
            .lock()
            .await
            .contract_subscription()
            .execute_transaction_locally(&message, execution_options)
            .await
            .handle_error()?;

        let descr = transaction.read_description().handle_error()?;
        let fees = if let ton_block::TransactionDescr::Ordinary(descr) = descr {
            compute_total_transaction_fees(&transaction, &descr)
        } else {
            transaction.total_fees.grams.as_u128()
        };

        Ok(fees.to_string())
    }

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    async fn send(&self, signed_message: String) -> anyhow::Result<String> {
        let signed_message =
            serde_json::from_str::<SignedMessage>(&signed_message).handle_error()?;

        let pending_transaction = self
            .inner_wallet
            .lock()
            .await
            .send(&signed_message.message, signed_message.expire_at)
            .await
            .handle_error()?;

        serde_json::to_string(&pending_transaction).handle_error()
    }

    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    async fn refresh(&self) -> anyhow::Result<bool> {
        self.inner_wallet
            .lock()
            .await
            .refresh()
            .await
            .handle_error()?;
        Ok(true)
    }

    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    async fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        let from_lt = from_lt.parse::<u64>().handle_error()?;
        self.inner_wallet
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
        self.inner_wallet
            .lock()
            .await
            .handle_block(&block)
            .await
            .handle_error()?;
        Ok(true)
    }

    async fn make_state_init(&self) -> anyhow::Result<String> {
        let state_init = self
            .inner_wallet
            .lock()
            .await
            .make_state_init()
            .handle_error()?;

        serialize_into_boc(&state_init)
    }

    async fn get_wallet_v5r1_seqno(
        &self,
        contract_state: String,
        public_key: String,
    ) -> anyhow::Result<u32> {
        let public_key = parse_public_key(public_key).handle_error()?;
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists { timings } => {
                return Ok(0);
            }
            nekoton::transport::models::RawContractState::Exists(contract) => contract.account,
        };

        let seqno = self
            .inner_wallet
            .lock()
            .await
            .get_wallet_v5_seqno(&current_state, &public_key)
            .handle_error()?;

        Ok(seqno)
    }
}

/// Find list of wallets of public_key and return them.
/// wallet_types - json-encoded list of WalletType.
/// public_key - key of account where wallets must be found.
/// Return json-encoded list of ExistingWalletInfo or throw error.
pub async fn ton_wallet_find_existing_wallets(
    transport: Arc<dyn Transport>,
    public_key: String,
    workchain_id: i8,
    wallet_types: String,
) -> anyhow::Result<String> {
    let public_key = parse_public_key(public_key).handle_error()?;

    let wallet_types = serde_json::from_str::<Vec<WalletTypeHelper>>(&wallet_types)
        .handle_error()?
        .into_iter()
        .map(|WalletTypeHelper(wallet_type)| wallet_type)
        .collect::<Vec<_>>();

    let existing_wallets =
        find_existing_wallets(transport.as_ref(), &public_key, workchain_id, &wallet_types)
            .await
            .handle_error()?
            .into_iter()
            .map(ExistingWalletInfoHelper)
            .collect::<Vec<_>>();

    serde_json::to_string(&existing_wallets).handle_error()
}

/// Get information of account by its address.
/// Return json-encoded ExistingWalletInfo or throw error.
pub async fn ton_wallet_get_existing_wallet_info(
    transport: Arc<dyn Transport>,
    address: String,
) -> anyhow::Result<String> {
    let address = parse_address(address)?;

    let raw_contract_state = transport
        .get_contract_state(&address)
        .await
        .handle_error()?;

    let existing_contract = match raw_contract_state {
        nekoton::transport::models::RawContractState::Exists(state) => state,
        nekoton::transport::models::RawContractState::NotExists { timings } => {
            return Err("Account not exists").handle_error();
        }
    };

    let (public_key, wallet_type) = extract_wallet_init_data(&existing_contract).handle_error()?;

    let existing_wallet_info = ExistingWalletInfo {
        address: existing_contract.account.addr.to_owned(),
        public_key,
        wallet_type,
        contract_state: existing_contract.brief(),
    };

    serde_json::to_string(&ExistingWalletInfoHelper(existing_wallet_info)).handle_error()
}

/// Get list of custodians of account by address.
/// Return list of public keys or throw error.
pub async fn ton_wallet_get_custodians(
    transport: Arc<dyn Transport>,
    address: String,
) -> anyhow::Result<Vec<String>> {
    let address = parse_address(address)?;

    let raw_contract_state = transport
        .get_contract_state(&address)
        .await
        .handle_error()?;

    let existing_contract = match raw_contract_state {
        nekoton::transport::models::RawContractState::Exists(state) => state,
        nekoton::transport::models::RawContractState::NotExists { timings } => {
            return Err("Account not exists").handle_error();
        }
    };

    let (public_key, wallet_type) = extract_wallet_init_data(&existing_contract).handle_error()?;

    let custodians = get_wallet_custodians(
        clock!().as_ref(),
        &existing_contract,
        &public_key,
        wallet_type,
    )
    .handle_error()?
    .into_iter()
    .map(|e| e.to_hex_string())
    .collect::<Vec<_>>();

    Ok(custodians)
}

fn parse_gift_params(params: String) -> anyhow::Result<Vec<Gift>> {
    let gifts = serde_json::from_str::<Vec<TonWalletTransferParams>>(&params)
        .handle_error()?
        .into_iter()
        .map(|p| {
            let destination = parse_address(p.destination)?;
            let amount = p.amount.parse::<u128>().handle_error()?;
            let body = p
                .body
                .map(|e| create_boc_or_comment_payload(&e))
                .transpose()
                .handle_error()?;
            let state_init = p
                .state_init
                .as_deref()
                .map(ton_block::StateInit::construct_from_base64)
                .transpose()
                .handle_error()?;

            Ok(Gift {
                flags: MessageFlags::default().into(),
                bounce: p.bounce,
                destination,
                amount,
                body,
                state_init,
            })
        })
        .collect::<anyhow::Result<Vec<_>>>()
        .handle_error()?;

    Ok(gifts)
}
