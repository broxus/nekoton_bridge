#![allow(unused_variables, dead_code, clippy::too_many_arguments)]

use std::panic::{RefUnwindSafe, UnwindSafe};
use std::str::FromStr;
use std::sync::Arc;

pub mod token_wallet_api;
use crate::clock;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::{parse_address, HandleError};
use async_trait::async_trait;
use nekoton::core::models::TransferRecipient;
use nekoton::core::token_wallet::{
    get_token_root_details, get_token_root_details_from_token_wallet, get_token_wallet_details,
    TokenWallet, TokenWalletSubscriptionHandler,
};
use nekoton::transport::Transport;
use nekoton_abi::create_boc_or_comment_payload;
use nekoton_abi::num_bigint::BigUint;
use tokio::sync::Mutex;
use ton_block::{Block, Deserializable};

/// This is a fucking hack that allows using nekoton::TokenWallet in dart classes.
/// This is a trait-wrapper above real TokenWallet with UnwindSafe + RefUnwindSafe.
#[async_trait]
pub trait TokenWalletBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Get address of owner of wallet.
    async fn owner(&self) -> String;

    /// Get address of wallet.
    async fn address(&self) -> String;

    /// Get symbol of contract of wallet.
    /// Return json-encoded Symbol or throw error
    async fn symbol(&self) -> anyhow::Result<String>;

    /// Get json-encoded TokenWalletVersion or throw error.
    async fn version(&self) -> anyhow::Result<String>;

    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    async fn balance(&self) -> String;

    /// Get json-encoded ContractState or throw error.
    async fn contract_state(&self) -> anyhow::Result<String>;

    async fn estimate_min_attached_amount(
        &self,
        destination: String,
        amount: String,
        notify_receiver: bool,
        payload: Option<String>,
    ) -> anyhow::Result<String>;

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
        destination: String,
        amount: String,
        notify_receiver: bool,
        attached_amount: Option<String>,
        payload: Option<String>,
        remaining_gas_to: Option<String>,
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

pub struct TokenWalletBox {
    inner_wallet: Arc<Mutex<TokenWallet>>,
}

impl TokenWalletBox {
    /// Create TokenWallet by subscribing to its instance.
    /// owner - address of account that is owner of wallet
    /// root_token_contract - address of contract in blockchain
    pub async fn subscribe(
        transport: Arc<dyn Transport>,
        owner: String,
        root_token_contract: String,
        handler: Arc<dyn TokenWalletSubscriptionHandler>,
        preload_transactions: bool,
    ) -> anyhow::Result<RustOpaque<Arc<dyn TokenWalletBoxTrait>>> {
        let owner = parse_address(owner)?;
        let root_token_contract = parse_address(root_token_contract)?;

        let token_wallet = TokenWallet::subscribe(
            clock!(),
            transport,
            owner,
            root_token_contract,
            handler,
            preload_transactions,
        )
        .await
        .handle_error()?;

        Ok(RustOpaque::new(Arc::new(TokenWalletBox {
            inner_wallet: Arc::new(Mutex::new(token_wallet)),
        })))
    }
}

impl UnwindSafe for TokenWalletBox {}
impl RefUnwindSafe for TokenWalletBox {}

#[async_trait]
impl TokenWalletBoxTrait for TokenWalletBox {
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

    /// Get symbol of contract of wallet.
    /// Return json-encoded Symbol or throw error
    async fn symbol(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        serde_json::to_string(&wallet.symbol()).handle_error()
    }

    /// Get json-encoded TokenWalletVersion or throw error.
    async fn version(&self) -> anyhow::Result<String> {
        let wallet = self.inner_wallet.lock().await;
        serde_json::to_string(&wallet.version()).handle_error()
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
        destination: String,
        amount: String,
        notify_receiver: bool,
        payload: Option<String>,
    ) -> anyhow::Result<String> {
        let destination = parse_address(destination)?;
        let destination = TransferRecipient::OwnerWallet(destination);
        let tokens = BigUint::from_str(&amount).handle_error()?;
        let payload = match payload {
            Some(payload) => create_boc_or_comment_payload(&payload)
                .handle_error()?
                .into_cell(),
            None => ton_types::Cell::default(),
        };

        let wallet = self.inner_wallet.lock().await;
        let amount = wallet
            .estimate_min_attached_amount(destination, tokens, notify_receiver, payload)
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
        destination: String,
        amount: String,
        notify_receiver: bool,
        attached_amount: Option<String>,
        payload: Option<String>,
        remaining_gas_to: Option<String>,
    ) -> anyhow::Result<String> {
        let destination = parse_address(destination)?;
        let remaining_gas_to = remaining_gas_to.map(parse_address).transpose()?;

        let destination = TransferRecipient::OwnerWallet(destination);

        let tokens = BigUint::from_str(&amount).handle_error()?;

        let payload = match payload {
            Some(payload) => create_boc_or_comment_payload(&payload)
                .handle_error()?
                .into_cell(),
            None => ton_types::Cell::default(),
        };

        let attached_amount = match attached_amount {
            None => 400000000,
            Some(amount) => amount.parse::<u128>().handle_error()?,
        };

        let internal_message = self
            .inner_wallet
            .lock()
            .await
            .prepare_transfer(
                destination,
                tokens,
                notify_receiver,
                payload,
                attached_amount,
                remaining_gas_to,
            )
            .await
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

/// Get details about token wallet by address of wallet
/// address - address of wallet
/// Return json-encoded list with 2 positions:
/// 0: TokenWalletDetails
/// 1: RootTokenContractDetails
/// or throw error
pub async fn token_wallet_details(
    transport: Arc<dyn Transport>,
    address: String,
) -> anyhow::Result<String> {
    let token_wallet = parse_address(address)?;

    let details = get_token_wallet_details(clock!().as_ref(), transport.as_ref(), &token_wallet)
        .await
        .handle_error()?;

    serde_json::to_string(&details).handle_error()
}

/// Get details about root contract by address of TokenWallet
/// Return json-encoded list with 2 positions:
/// 0: Address of root contract
/// 1: RootTokenContractDetails of root contract
/// or throw error.
pub async fn token_root_details_from_token_wallet(
    transport: Arc<dyn Transport>,
    token_wallet_address: String,
) -> anyhow::Result<String> {
    let token_wallet = parse_address(token_wallet_address)?;

    let details = get_token_root_details_from_token_wallet(
        clock!().as_ref(),
        transport.as_ref(),
        &token_wallet,
    )
    .await
    .handle_error()?;

    let details = (details.0.to_string(), details.1);

    serde_json::to_string(&details).handle_error()
}

/// Get details about root contract by address of token root
/// Return json-encoded RootTokenContractDetails
/// or throw error.
pub async fn token_root_details(
    transport: Arc<dyn Transport>,
    token_root_address: String,
) -> anyhow::Result<String> {
    let root_token_contract = parse_address(token_root_address)?;

    let details =
        get_token_root_details(clock!().as_ref(), transport.as_ref(), &root_token_contract)
            .await
            .handle_error()?;

    serde_json::to_string(&details).handle_error()
}
