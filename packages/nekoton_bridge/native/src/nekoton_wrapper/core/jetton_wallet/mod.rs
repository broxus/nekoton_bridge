#![allow(unused_variables, dead_code, clippy::too_many_arguments)]

use std::panic::{RefUnwindSafe, UnwindSafe};
use std::str::FromStr;
use std::sync::Arc;

pub mod jetton_wallet_api;
use crate::clock;
use crate::nekoton_wrapper::{parse_address, HandleError};
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::contracts::jetton as jetton_contract;
use nekoton::core::jetton_wallet::{
    get_token_root_details, get_token_root_details_from_token_wallet, get_token_wallet_details,
    JettonWallet, JettonWalletSubscriptionHandler,
};
use nekoton::transport::Transport;
use nekoton_abi::create_boc_or_comment_payload;
use nekoton_abi::num_bigint::BigUint;
use nekoton_utils::{serde_address, serde_string};
use serde::{Deserialize, Serialize};
use tokio::sync::Mutex;
use ton_block::{Block, Deserializable, MsgAddressInt};

/// This is a fucking hack that allows using nekoton::JettonWallet in dart classes.
/// This is a trait-wrapper above real JettonWallet with UnwindSafe + RefUnwindSafe.
#[async_trait]
pub trait JettonWalletBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Get address of owner of wallet.
    async fn owner(&self) -> String;

    /// Get address of wallet.
    async fn address(&self) -> String;

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    async fn balance(&self) -> String;

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String>;

    /// Estimates the minimum amount of native tokens that must be attached to a transfer.
    ///
    /// # Arguments
    ///
    /// * `amount` - The amount of tokens to be transferred.
    /// * `destination` - The address of the account that should receive the tokens.
    /// * `remaining_gas_to` - The address where remaining gas should be sent.
    /// * `custom_payload` - Optional payload for the transfer.
    /// * `callback_value` - The value to be used in the callback.
    /// * `callback_payload` - Optional payload for the callback.
    ///
    /// # Returns
    ///
    /// A JSON-encoded string representing the estimated minimum attached amount or an error.
    async fn estimate_min_attached_amount(
        &self,
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
    ) -> anyhow::Result<String>;

    /// Prepare transferring tokens from this wallet to another.
    ///
    /// # Arguments
    ///
    /// * `amount` - The amount of tokens to be transferred.
    /// * `destination` - The address of the account that should receive the tokens.
    /// * `remaining_gas_to` - The address where remaining gas should be sent.
    /// * `custom_payload` - Optional payload for the transfer.
    /// * `callback_value` - The value to be used in the callback.
    /// * `callback_payload` - Optional payload for the callback.
    /// * `attached_amount` - Optional string representation of a `u64`. Default is `100000000`. Specifies how many native tokens should be attached to the transfer.
    ///
    /// # Returns
    ///
    /// A JSON-encoded `InternalMessage` or an error.
    async fn prepare_transfer(
        &self,
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
        attached_amount: Option<String>,
    ) -> anyhow::Result<String>;

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
}

pub struct JettonWalletBox {
    inner_wallet: Arc<Mutex<JettonWallet>>,
}

impl JettonWalletBox {
    /// Create JettonWallet by subscribing to its instance.
    /// owner - address of account that is owner of wallet
    /// root_token_contract - address of contract in blockchain
    pub async fn subscribe(
        transport: Arc<dyn Transport>,
        owner: String,
        root_token_contract: String,
        handler: Arc<dyn JettonWalletSubscriptionHandler>,
        preload_transactions: bool,
    ) -> anyhow::Result<RustOpaque<Arc<dyn JettonWalletBoxTrait>>> {
        let owner = parse_address(owner)?;
        let root_token_contract = parse_address(root_token_contract)?;

        let token_wallet =
            JettonWallet::subscribe(clock!(), transport, owner, root_token_contract, handler, preload_transactions)
                .await
                .handle_error()?;

        Ok(RustOpaque::new(Arc::new(JettonWalletBox {
            inner_wallet: Arc::new(Mutex::new(token_wallet)),
        })))
    }
}

impl UnwindSafe for JettonWalletBox {}
impl RefUnwindSafe for JettonWalletBox {}

#[async_trait]
impl JettonWalletBoxTrait for JettonWalletBox {
    /// Get address of owner of wallet.
    async fn owner(&self) -> String {
        let wallet = self.inner_wallet.lock().await;
        wallet.owner().to_string()
    }

    /// Get address of wallet.
    async fn address(&self) -> String {
        let wallet = self.inner_wallet.lock().await;
        wallet.address().to_string()
    }

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    async fn balance(&self) -> String {
        let wallet = self.inner_wallet.lock().await;
        wallet.balance().to_string()
    }

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        serde_json::to_string(&wallet.contract_state()).handle_error()
    }

    async fn estimate_min_attached_amount(
        &self,
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
    ) -> anyhow::Result<String> {
        let destination = parse_address(destination)?;
        let remaining_gas_to = parse_address(remaining_gas_to)?;
        let callback_value = BigUint::from_str(&callback_value).handle_error()?;
        let amount = BigUint::from_str(&amount).handle_error()?;
        let custom_payload = match custom_payload {
            Some(p) => Some(
                create_boc_or_comment_payload(&p)
                    .handle_error()?
                    .into_cell(),
            ),
            None => None,
        };
        let callback_payload = match callback_payload {
            Some(p) => Some(
                create_boc_or_comment_payload(&p)
                    .handle_error()?
                    .into_cell(),
            ),
            None => None,
        };

        let wallet = self.inner_wallet.lock().await;
        let amount = wallet
            .estimate_min_attached_amount(
                amount,
                destination,
                remaining_gas_to,
                custom_payload,
                callback_value,
                callback_payload,
            )
            .await
            .handle_error()?;

        serde_json::to_string(&amount).handle_error()
    }

    /// Prepare transferring tokens from this wallet to other.
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// notify_receiver - if receiver should be notifier by blockchain
    /// payload - payload of transfer aka comment
    /// attached_amount - string representation of rust u64, default 400000000. How many native tokens
    ///   should be attached to transfer.
    /// Return json-encoded InternalMessage or throw error.
    async fn prepare_transfer(
        &self,
        amount: String,
        destination: String,
        remaining_gas_to: String,
        custom_payload: Option<String>,
        callback_value: String,
        callback_payload: Option<String>,
        attached_amount: Option<String>,
    ) -> anyhow::Result<String> {
        let attached_amount = attached_amount.unwrap_or("100000000".to_string()); // DEFAULT if 0.1 TON
        let attached_amount = u64::from_str(&attached_amount).handle_error()?;

        let destination = parse_address(destination)?;
        let remaining_gas_to = parse_address(remaining_gas_to)?;
        let callback_value = BigUint::from_str(&callback_value).handle_error()?;
        let amount = BigUint::from_str(&amount).handle_error()?;
        let custom_payload = match custom_payload {
            Some(p) => Some(
                create_boc_or_comment_payload(&p)
                    .handle_error()?
                    .into_cell(),
            ),
            None => None,
        };
        let callback_payload = match callback_payload {
            Some(p) => Some(
                create_boc_or_comment_payload(&p)
                    .handle_error()?
                    .into_cell(),
            ),
            None => None,
        };

        let internal_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_transfer(
                amount,
                destination,
                remaining_gas_to,
                custom_payload,
                callback_value,
                callback_payload,
                attached_amount,
            )
            .handle_error()?;

        serde_json::to_string(&internal_message).handle_error()
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
}

/// Get details about jetton wallet by address of wallet
/// address - address of wallet
/// Return json-encoded list with 2 positions:
/// 0: JettonWalletDetails
/// 1: JettonRootData
/// or throw error
pub async fn jetton_wallet_details(
    transport: Arc<dyn Transport>,
    address: String,
) -> anyhow::Result<String> {
    let token_wallet = parse_address(address)?;

    let details = get_token_wallet_details(clock!().as_ref(), transport.as_ref(), &token_wallet)
        .await
        .handle_error()?;

    let details = (
        JettonWalletData::from(details.0),
        JettonRootData::from(details.1),
    );

    serde_json::to_string(&details).handle_error()
}

/// Get details about root contract by address of JettonWallet
/// Return json-encoded list with 2 positions:
/// 0: Address of root contract
/// 1: RootJettonContractDetails of root contract
/// or throw error.
pub async fn jetton_root_details_from_jetton_wallet(
    transport: Arc<dyn Transport>,
    token_wallet_address: String,
) -> anyhow::Result<String> {
    let token_wallet_address = parse_address(token_wallet_address)?;

    let details = get_token_root_details_from_token_wallet(
        clock!().as_ref(),
        transport.as_ref(),
        &token_wallet_address,
    )
    .await
    .handle_error()?;

    let details = (details.0.to_string(), JettonRootData::from(details.1));

    serde_json::to_string(&details).handle_error()
}

/// Get details about root contract by address of token root
/// Return json-encoded RootJettonContractDetails
/// or throw error.
pub async fn jetton_root_details(
    transport: Arc<dyn Transport>,
    token_root_address: String,
) -> anyhow::Result<String> {
    let root_token_contract = parse_address(token_root_address)?;

    let details =
        get_token_root_details(clock!().as_ref(), transport.as_ref(), &root_token_contract)
            .await
            .handle_error()?;

    let details = JettonRootData::from(details);

    serde_json::to_string(&details).handle_error()
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct JettonWalletData {
    #[serde(with = "serde_string")]
    pub balance: BigUint,
    #[serde(with = "serde_address")]
    pub owner_address: MsgAddressInt,
    #[serde(with = "serde_address")]
    pub root_address: MsgAddressInt,
}

impl From<jetton_contract::JettonWalletData> for JettonWalletData {
    fn from(data: jetton_contract::JettonWalletData) -> Self {
        JettonWalletData {
            owner_address: data.owner_address.clone(),
            root_address: data.root_address.clone(),
            balance: data.balance.clone(),
        }
    }
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct JettonRootData {
    #[serde(with = "serde_string")]
    pub total_supply: BigUint,
    pub mintable: bool,
    #[serde(with = "serde_address")]
    pub admin_address: MsgAddressInt,
    pub content: JettonMetaData,
}

impl From<jetton_contract::JettonRootData> for JettonRootData {
    fn from(data: jetton_contract::JettonRootData) -> Self {
        Self {
            total_supply: data.total_supply.clone(),
            admin_address: data.admin_address.clone(),
            mintable: data.mintable.clone(),
            content: data.content.into(),
        }
    }
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct JettonMetaData {
    pub name: Option<String>,
    pub uri: Option<String>,
    pub symbol: Option<String>,
    pub description: Option<String>,
    pub image: Option<String>,
    pub decimals: Option<u8>,
}

impl From<nekoton_jetton::JettonMetaData> for JettonMetaData {
    fn from(data: nekoton_jetton::JettonMetaData) -> Self {
        JettonMetaData {
            name: data.name.clone(),
            uri: data.uri.clone(),
            symbol: data.symbol.clone(),
            description: data.description.clone(),
            image: data.image.clone(),
            decimals: data.decimals.clone(),
        }
    }
}
