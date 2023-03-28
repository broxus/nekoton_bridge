#![allow(unused_variables, dead_code, clippy::too_many_arguments)]

use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;

pub mod models;
pub mod ton_wallet_api;
use crate::clock;
use crate::nekoton_wrapper::core::ton_wallet::models::{
    ExistingWalletInfoHelper, WalletTypeHelper,
};
use crate::nekoton_wrapper::crypto::models::{UnsignedMessageBox, UnsignedMessageBoxTrait};
use crate::nekoton_wrapper::transport::models::RawContractStateHelper;
use crate::nekoton_wrapper::{parse_address, parse_public_key, HandleError};
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::core::models::{Expiration, MessageFlags, PollingMethod};
use nekoton::core::ton_wallet::{
    extract_wallet_init_data, find_existing_wallets, get_wallet_custodians, ExistingWalletInfo,
    Gift, TonWallet, TonWalletSubscriptionHandler, TransferAction,
};
use nekoton::crypto::SignedMessage;
use nekoton::transport::Transport;
use nekoton_abi::create_boc_or_comment_payload;
use tokio::sync::Mutex;
use ton_block::{Block, Deserializable};

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
    async fn wallet_type(&self) -> Result<String, anyhow::Error>;

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> Result<String, anyhow::Error>;

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> Result<String, anyhow::Error>;

    /// Get json-encoded PollingMethod of wallet or throw error.
    async fn polling_method(&self) -> PollingMethod;

    /// Get json-encoded TonWalletDetails or throw error.
    async fn details(&self) -> Result<String, anyhow::Error>;

    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    async fn unconfirmed_transactions(&self) -> Result<String, anyhow::Error>;

    /// Get optional list of custodians.
    /// Returns list of public keys.
    async fn custodians(&self) -> Option<Vec<String>>;

    /// Prepare TonWallet for deploy action.
    /// expiration - json-encoded Expiration.
    /// Returns UnsignedMessage or throw error.
    async fn prepare_deploy(
        &self,
        expiration: String,
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error>;

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
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error>;

    /// Prepare transferring tokens from this wallet to other.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// bounce - nekoton's bounce param
    /// body - body of transfer aka comment
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    async fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        destination: String,
        amount: String,
        bounce: bool,
        body: Option<String>,
        expiration: String,
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error>;

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
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error>;

    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(&self, signed_message: String) -> Result<String, anyhow::Error>;

    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    async fn send(&self, signed_message: String) -> Result<String, anyhow::Error>;

    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    async fn refresh(&self) -> Result<bool, anyhow::Error>;

    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    async fn preload_transactions(&self, from_lt: String) -> Result<bool, anyhow::Error>;

    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    async fn handle_block(&self, block: String) -> Result<bool, anyhow::Error>;
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
    ) -> Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>, anyhow::Error> {
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
    ) -> Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>, anyhow::Error> {
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
    ) -> Result<RustOpaque<Arc<dyn TonWalletBoxTrait>>, anyhow::Error> {
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
    async fn wallet_type(&self) -> Result<String, anyhow::Error> {
        let contract = self.inner_wallet.lock().await.wallet_type();
        serde_json::to_string(&WalletTypeHelper(contract)).handle_error()
    }

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> Result<String, anyhow::Error> {
        let wallet = self.inner_wallet.lock().await;
        let contract_state = wallet.contract_state();
        serde_json::to_string(contract_state).handle_error()
    }

    /// Get list of json-encoded PendingTransaction or throw error.
    async fn pending_transactions(&self) -> Result<String, anyhow::Error> {
        let wallet = self.inner_wallet.lock().await;
        let pending_transactions = wallet.pending_transactions();
        serde_json::to_string(pending_transactions).handle_error()
    }

    /// Get json-encoded PollingMethod of wallet or throw error.
    async fn polling_method(&self) -> PollingMethod {
        self.inner_wallet.lock().await.polling_method()
    }

    /// Get json-encoded TonWalletDetails or throw error.
    async fn details(&self) -> Result<String, anyhow::Error> {
        let details = self.inner_wallet.lock().await.details();
        serde_json::to_string(&details).handle_error()
    }

    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    async fn unconfirmed_transactions(&self) -> Result<String, anyhow::Error> {
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
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error> {
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
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error> {
        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;

        let custodians = custodians
            .into_iter()
            .map(parse_public_key)
            .collect::<Result<Vec<_>, anyhow::Error>>()
            .handle_error()?;

        let unsigned_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_deploy_with_multiple_owners(expiration, &custodians, req_confirms, None)
            .handle_error()?;

        Ok(UnsignedMessageBox::create(unsigned_message))
    }

    /// Prepare transferring tokens from this wallet to other.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// bounce - nekoton's bounce param
    /// body - body of transfer aka comment
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    async fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        destination: String,
        amount: String,
        bounce: bool,
        body: Option<String>,
        expiration: String,
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error> {
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists => {
                return Err("Not exists").handle_error();
            }
            nekoton::transport::models::RawContractState::Exists(contract) => contract.account,
        };

        let public_key = parse_public_key(public_key).handle_error()?;

        let destination = parse_address(destination)?;

        let amount = amount.parse::<u64>().handle_error()?;

        let body = body
            .map(|e| create_boc_or_comment_payload(&e))
            .transpose()
            .handle_error()?;

        let expiration = serde_json::from_str::<Expiration>(&expiration).handle_error()?;

        let gift = Gift {
            flags: MessageFlags::default().into(),
            bounce,
            destination,
            amount,
            body,
            state_init: None,
        };

        let action = self
            .inner_wallet
            .lock()
            .await
            .prepare_transfer(&current_state, &public_key, gift, expiration)
            .handle_error()?;

        let unsigned_message = match action {
            TransferAction::DeployFirst => return Err("Deploy first").handle_error(),
            TransferAction::Sign(unsigned_message) => unsigned_message,
        };

        Ok(UnsignedMessageBox::create(unsigned_message))
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
    ) -> Result<RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>, anyhow::Error> {
        let contract_state = serde_json::from_str::<RawContractStateHelper>(&contract_state)
            .map(|RawContractStateHelper(raw_contract_state)| raw_contract_state)
            .handle_error()?;

        let current_state = match contract_state {
            nekoton::transport::models::RawContractState::NotExists => {
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
    /// Returns fees as string representation of u128 or throw error.
    async fn estimate_fees(&self, signed_message: String) -> Result<String, anyhow::Error> {
        let message = serde_json::from_str::<SignedMessage>(&signed_message)
            .handle_error()?
            .message;

        let fees = self
            .inner_wallet
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
    async fn send(&self, signed_message: String) -> Result<String, anyhow::Error> {
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
    async fn refresh(&self) -> Result<bool, anyhow::Error> {
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
    async fn preload_transactions(&self, from_lt: String) -> Result<bool, anyhow::Error> {
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
    async fn handle_block(&self, block: String) -> Result<bool, anyhow::Error> {
        let block = Block::construct_from_base64(&block).handle_error()?;
        self.inner_wallet
            .lock()
            .await
            .handle_block(&block)
            .await
            .handle_error()?;
        Ok(true)
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
) -> Result<String, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
    let address = parse_address(address)?;

    let raw_contract_state = transport
        .get_contract_state(&address)
        .await
        .handle_error()?;

    let existing_contract = match raw_contract_state {
        nekoton::transport::models::RawContractState::Exists(state) => state,
        nekoton::transport::models::RawContractState::NotExists => {
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
) -> Result<Vec<String>, anyhow::Error> {
    let address = parse_address(address)?;

    let raw_contract_state = transport
        .get_contract_state(&address)
        .await
        .handle_error()?;

    let existing_contract = match raw_contract_state {
        nekoton::transport::models::RawContractState::Exists(state) => state,
        nekoton::transport::models::RawContractState::NotExists => {
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
