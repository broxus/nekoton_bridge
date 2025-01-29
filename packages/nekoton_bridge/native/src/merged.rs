#![allow(unused, clippy::too_many_arguments)]
pub use crate::{
    async_run, clock,
    nekoton_wrapper::{
        core::{
            accounts_storage::{
                accounts_storage_verify_data, AccountsStorageBox, AccountsStorageBoxTrait,
            },
            generic_contract::{GenericContractBox, GenericContractBoxTrait},
            keystore::{
                models::{SignedData, SignedDataRaw},
                verify_data, KeyStoreApiBox, KeyStoreApiBoxTrait,
            },
            token_wallet::{
                token_root_details, token_root_details_from_token_wallet, token_wallet_details,
                TokenWalletBox, TokenWalletBoxTrait,
            },
            ton_wallet::{
                ton_wallet_find_existing_wallets, ton_wallet_get_custodians,
                ton_wallet_get_existing_wallet_info, TonWalletBox, TonWalletBoxTrait,
            },
        },
        crypto::{
            mnemonic::models::KeypairHelper,
            models::{KeySigner, UnsignedMessageBox, UnsignedMessageBoxTrait},
        },
        external::{
            connections::{
                GqlConnectionBox, GqlConnectionBoxTrait, JrpcConnectionBox, JrpcConnectionBoxTrait,
                LedgerConnectionBox, LedgerConnectionBoxTrait, ProtoConnectionBox,
                ProtoConnectionBoxTrait,
            },
            storage::{StorageBox, StorageBoxTrait},
        },
        helpers::{
            make_boc, make_boc_with_hash, make_full_contract_state,
            models::{
                DecodedEvent, DecodedInput, DecodedOutput, DecodedTransaction, ExecutionOutput,
                StorageFeeInfo,
            },
            parse_account_stuff, parse_cell, parse_contract_abi, parse_hex_or_base64_bytes,
            parse_method_name, parse_optional_abi_version, parse_params_list, parse_signature,
            parse_slice, serialize_into_boc, serialize_into_boc_with_hash,
            serialize_state_init_data_key,
        },
        init_tokio_runtime, parse_address, parse_public_key, str_list_to_string_vec,
        str_vec_to_string_vec,
        transport::{GqlTransportBox, JrpcTransportBox, ProtoTransportBox, TransportBoxTrait},
        update_clock_offset, HandleError, JsonOrError,
    },
    utils::{
        caller,
        caller::{DynamicNamedValue, DynamicValue},
        logger, mega_struct,
    },
};
use async_trait::async_trait;
pub use ed25519_dalek::{Verifier, PUBLIC_KEY_LENGTH, SIGNATURE_LENGTH};
pub use flutter_rust_bridge::*;
use log::*;
pub use nekoton::{
    core::{
        generic_contract::GenericContractSubscriptionHandler,
        keystore::{KeyStore, KeyStoreBuilder},
        models::{
            ContractState, Expiration, ExpireAt, PendingTransaction, PollingMethod,
            TokenWalletTransaction, Transaction, TransactionAdditionalInfo, TransactionWithData,
            TransactionsBatchInfo,
        },
        parsing::parse_payload,
        token_wallet::TokenWalletSubscriptionHandler,
        ton_wallet::TonWalletSubscriptionHandler,
        utils::make_labs_unsigned_message,
        TransactionExecutionOptions,
    },
    crypto::{
        derive_from_phrase, dict, generate_key, DerivedKeySigner, EncryptedKeySigner,
        LedgerKeySigner, MnemonicType, SignedMessage, UnsignedMessage,
    },
    external,
    external::{
        GqlConnection, GqlRequest, JrpcConnection, JrpcRequest, ProtoConnection, ProtoRequest,
        Storage,
    },
    transport::gql::LatestBlock,
};
use nekoton_abi::{
    guess_method_by_input, insert_state_init_data, make_abi_tokens, num_bigint::BigUint,
    num_traits::*, FunctionExt,
};
use nekoton_utils::Clock;
use serde::{Deserialize, Serialize};
use std::{
    borrow::Cow,
    collections::HashMap,
    convert::{TryFrom, TryInto},
    sync::{atomic::AtomicU64, Arc},
    thread, time,
};
use ton_block::{Deserializable, GetRepresentationHash, Serializable};
use ton_executor::TransactionExecutor;
use ton_types::SliceData;

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/crypto_api.rs
///----------------------------

/// Check signature by publicKey and data
pub fn verify_signature(
    public_key: String,
    data: String,
    signature: String,
    signature_id: Option<i32>,
) -> anyhow::Result<bool> {
    let public_key = parse_public_key(public_key)?;
    let data = parse_hex_or_base64_bytes(data).handle_error()?;
    let signature = parse_signature(signature)?;
    let data = nekoton::crypto::extend_with_signature_id(&data, signature_id);
    Ok(public_key.verify(data.as_ref(), &signature).is_ok())
}
/// This struct creates only in rust side and describes UnsignedMessage
pub struct UnsignedMessageImpl {
    pub inner_message: RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>,
}
impl UnsignedMessageImpl {
    pub fn refresh_timeout(&self) {
        self.inner_message.refresh_timeout();
    }
    /// Return current expiration timestamp of UnsignedMessage
    /// Returns secondsSinceEpoch
    pub fn expire_at(&self) -> u32 {
        self.inner_message.expire_at()
    }
    /// Returns base64 encoded hash string of UnsignedMessage
    pub fn hash(&self) -> String {
        self.inner_message.hash()
    }
    /// Sign message with signature and return json-encoded SignedMessage.
    /// signature receives from KeyStore.sign where data is UnsignedMessage.hash
    pub fn sign(&self, signature: String) -> anyhow::Result<String> {
        self.inner_message.sign(signature)
    }
    /// Sign message with fake signature and return json-encoded SignedMessage or throws error
    pub fn sign_fake(&self) -> anyhow::Result<String> {
        self.inner_message.sign_fake()
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/mnemonic/mnemonic_api.rs
///----------------------------

/// Generate seed phrase by specified mnemonic type
pub fn nt_generate_key(account_type: MnemonicType) -> GeneratedKeyG {
    let key = generate_key(account_type);
    GeneratedKeyG {
        words: str_vec_to_string_vec(key.words),
        account_type: key.account_type,
    }
}
/// Get hints for input part of word of seed phrase to get possible words
/// input: acco
/// returns [account, accommodate, ...]
pub fn nt_get_hints(input: String) -> Vec<String> {
    str_list_to_string_vec(dict::get_hints(input.as_str()))
}
/// Generate public and secret keys from seed phrase and mnemonic type
/// Returns json {'public': '...', 'secret': '...'}
/// or throws Exception
pub fn nt_derive_from_phrase(
    phrase: String,
    mnemonic_type: MnemonicType,
) -> anyhow::Result<String> {
    let keypair = derive_from_phrase(phrase.as_str(), mnemonic_type).handle_error()?;
    serde_json::to_value(KeypairHelper(keypair)).json_or_error()
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/transport/gql_transport_api.rs
///----------------------------

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
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/transport/proto_transport_api.rs
///----------------------------

/// Wrapper structure above ProtoTransport that provides interface to communicate with it
/// via TransportBoxTrait.
pub struct ProtoTransportImpl {
    pub inner_transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
}
impl ProtoTransportImpl {
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
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/transport/jrpc_transport_api.rs
///----------------------------

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
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/core/token_wallet/token_wallet_api.rs
///----------------------------

pub struct TokenWalletDartWrapper {
    pub inner_wallet: RustOpaque<Arc<dyn TokenWalletBoxTrait>>,
}
impl TokenWalletDartWrapper {
    /// Create TokenWallet by subscribing to its instance.
    /// owner - address of account that is owner of wallet
    /// root_token_contract - address of contract in blockchain
    pub fn subscribe(
        instance_hash: String,
        owner: String,
        root_token_contract: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TokenWalletDartWrapper> {
        let wallet = async_run!(
            TokenWalletBox::subscribe(
                transport.get_transport(),
                owner,
                root_token_contract,
                Arc::new(TokenWalletSubscriptionHandlerImpl { instance_hash })
            )
            .await
        )
        .handle_error()?;
        Ok(Self {
            inner_wallet: wallet,
        })
    }
    /// Get address of owner of wallet.
    pub fn owner(&self) -> String {
        async_run!(self.inner_wallet.owner().await)
    }
    /// Get address of wallet.
    pub fn address(&self) -> String {
        async_run!(self.inner_wallet.address().await)
    }
    /// Get symbol of contract of wallet.
    /// Return json-encoded Symbol or throw error
    pub fn symbol(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.symbol().await)
    }
    /// Get json-encoded TokenWalletVersion or throw error.
    pub fn version(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.version().await)
    }
    /// Get balance of wallet.
    /// Return string representation of rust BigUInt
    pub fn balance(&self) -> String {
        async_run!(self.inner_wallet.balance().await)
    }
    /// Get json-encoded ContractState or throw error.
    pub fn contract_state(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.contract_state().await)
    }
    pub fn estimate_min_attached_amount(
        &self,
        destination: String,
        amount: String,
        notify_receiver: bool,
        payload: Option<String>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_wallet
                .estimate_min_attached_amount(destination, amount, notify_receiver, payload)
                .await
        )
    }
    /// Prepare transferring tokens from this wallet to other.
    /// destination - address of account that should receive token
    /// amount - amount of tokens that should be transferred
    /// notify_receiver - if receiver should be notifier by blockchain
    /// payload - payload of transfer aka comment
    /// attached_amount - string representation of rust u64, default 400000000. How many native tokens
    ///   should be attached to transfer.
    /// Return json-encoded InternalMessage or throw error.
    pub fn prepare_transfer(
        &self,
        destination: String,
        amount: String,
        notify_receiver: bool,
        attached_amount: Option<String>,
        payload: Option<String>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_wallet
                .prepare_transfer(
                    destination,
                    amount,
                    notify_receiver,
                    attached_amount,
                    payload
                )
                .await
        )
    }
    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    pub fn refresh(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.refresh().await)
    }
    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.preload_transactions(from_lt).await)
    }
    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.handle_block(block).await)
    }
    /// Get details about token wallet by address of wallet
    /// address - address of wallet
    /// Return json-encoded list with 2 positions:
    /// 0: TokenWalletDetails
    /// 1: RootTokenContractDetails
    /// or throw error
    pub fn get_token_wallet_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<String> {
        async_run!(token_wallet_details(transport.get_transport(), address,).await)
    }
    /// Get details about root contract by address of TokenWallet
    /// Return json-encoded list with 2 positions:
    /// 0: Address of root contract
    /// 1: RootTokenContractDetails of root contract
    /// or throw error.
    pub fn get_token_root_details_from_token_wallet(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_wallet_address: String,
    ) -> anyhow::Result<String> {
        async_run!(
            token_root_details_from_token_wallet(transport.get_transport(), token_wallet_address,)
                .await
        )
    }
    /// Get details about root contract by address of TokenWallet
    /// Return json-encoded RootTokenContractDetails
    /// or throw error.
    pub fn get_token_root_details(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        token_root_address: String,
    ) -> anyhow::Result<String> {
        async_run!(token_root_details(transport.get_transport(), token_root_address,).await)
    }
}
/// Handler for TonWallet that calls dart methods and sends data
pub struct TokenWalletSubscriptionHandlerImpl {
    pub instance_hash: String,
}
impl TokenWalletSubscriptionHandler for TokenWalletSubscriptionHandlerImpl {
    /// Send string representation of rust BigUInt
    fn on_balance_changed(&self, balance: BigUint) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("onBalanceChanged"),
            args: vec![caller::DynamicValue::String(balance.to_string())],
            named_args: vec![],
        };
        caller::call(stub, false);
    }
    /// Send json-encoded list with 2 positions:
    /// 0: list of TransactionWithData<TokenWalletTransaction>
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<TokenWalletTransaction>>,
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

///----------------------------
/// CONTENT OF src/nekoton_wrapper/core/keystore/keystore_api.rs
///----------------------------

pub struct KeystoreDartWrapper {
    pub inner_keystore: RustOpaque<Arc<dyn KeyStoreApiBoxTrait>>,
}
impl KeystoreDartWrapper {
    /// Create KeyStore or throw error
    pub fn new(
        storage: StorageDartWrapper,
        signers: Vec<KeySigner>,
        ledger_connection: Option<LedgerConnectionDartWrapper>,
    ) -> anyhow::Result<KeystoreDartWrapper> {
        let keystore_builder = map_keystore_builder(signers, ledger_connection)?;
        let keystore =
            KeyStoreApiBox::create(keystore_builder, storage.get_storage().get_storage())?;
        Ok(Self {
            inner_keystore: keystore,
        })
    }
    /// Get list of json-encoded KeyStoreEntry or throw error
    pub fn get_entries(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.get_entries().await)
    }
    /// Insert new key in keystore. Returns json-encoded KeystoreEntry or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyCreateInput or
    ///   DerivedKeyCreateInput or LedgerKeyCreateInput
    pub fn add_key(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.add_key(signer, input).await)
    }
    /// Method same as add_key but allows add multiple keys at time.
    /// Returns json-encoded list of KeyStoreEntry or throw error.
    /// input - json-encoded list of inputs, same as in add_key method
    pub fn add_keys(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.add_keys(signer, input).await)
    }
    /// Update key data.
    /// Returns updated json-encoded KeyStoreEntry or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyUpdateParams or
    ///   DerivedKeyUpdateParams or LedgerUpdateKeyInput
    pub fn update_key(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.update_key(signer, input).await)
    }
    /// Export key and get its seed phrase and mnemonic type.
    /// THIS METHOD DO NOT WORK for LEDGER.
    /// Returns json-encoded EncryptedKeyExportSeedOutput or DerivedKeyExportOutput or throw error
    pub fn export_seed(&self, signer: KeySigner, input: String) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.export_seed(signer, input).await)
    }
    /// Return list of public keys specified for signer or throw error.
    /// input - json-encoded action specified for signer eg EncryptedKeyGetPublicKeys or
    ///   DerivedKeyGetPublicKeys or LedgerKeyGetPublicKeys
    pub fn get_public_keys(&self, signer: KeySigner, input: String) -> anyhow::Result<Vec<String>> {
        async_run!(self.inner_keystore.get_public_keys(signer, input).await)
    }
    /// Encrypt data with specified algorithm and input specified for signer eg EncryptedKeyPassword
    ///   or DerivedKeyPassword or LedgerSignInput.
    /// data - base64 encoded data that must be encrypted.
    /// algorithm - name of algorithm that should be used for encryption, for example ChaCha20Poly1305
    /// public_keys - list of keys that is used for encryption.
    ///
    /// Returns json-encoded list of EncryptedData or throw error.
    pub fn encrypt(
        &self,
        signer: KeySigner,
        data: String,
        public_keys: Vec<String>,
        algorithm: String,
        input: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_keystore
                .encrypt(signer, data, public_keys, algorithm, input)
                .await
        )
    }
    /// Decrypt json-encoded EncryptedData in data.
    /// input - json-encoded action for signer eg EncryptedKeyPassword or DerivedKeyPassword or
    ///   LedgerSignInput.
    /// Returns base64-encoded data or throw error.
    pub fn decrypt(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
    ) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.decrypt(signer, data, input).await)
    }
    /// Sign data and return base64-encoded signature or throw error.
    /// input - json-encoded action for signer eg EncryptedKeyPassword or DerivedKeyPassword or
    ///   LedgerSignInput.
    /// signature_id - id of transport
    /// data - base64-encoded data that should be signed.
    pub fn sign(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_keystore
                .sign(signer, data, input, signature_id)
                .await
        )
    }
    /// Same method as sign.
    /// data - base64-encoded string.
    /// Return SignedData or throw error.
    pub fn sign_data(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<SignedData> {
        async_run!(
            self.inner_keystore
                .sign_data(signer, data, input, signature_id)
                .await
        )
    }
    /// Same method as sign.
    /// data - base64-encoded string.
    /// Return SignedDataRaw or throw error.
    pub fn sign_data_raw(
        &self,
        signer: KeySigner,
        data: String,
        input: String,
        signature_id: Option<i32>,
    ) -> anyhow::Result<SignedDataRaw> {
        async_run!(
            self.inner_keystore
                .sign_data_raw(signer, data, input, signature_id)
                .await
        )
    }
    /// Remove public key from KeyStore and return json-encoded KeyStoreEntry if it was removed.
    pub fn remove_key(&self, public_key: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_keystore.remove_key(public_key).await)
    }
    /// Remove list of public key from KeyStore and return json-encoded list of KeyStoreEntry's
    /// that were removed or throw error.
    pub fn remove_keys(&self, public_keys: Vec<String>) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.remove_keys(public_keys).await)
    }
    /// Check if password cached for specified public_key.
    /// duration - timestamp in milliseconds of expiring key.
    /// Returns true/false or throw error.
    pub fn is_password_cached(&self, public_key: String, duration: u64) -> anyhow::Result<bool> {
        async_run!(
            self.inner_keystore
                .is_password_cached(public_key, duration)
                .await
        )
    }
    /// Clear KeyStore and remove all entries and all sensitive data.
    pub fn clear_keystore(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.clear_keystore().await)
    }
    /// Try to reload all stored data.
    pub fn reload_keystore(&self) -> anyhow::Result<String> {
        async_run!(self.inner_keystore.reload_keystore().await)
    }
    /// Verify if data is valid with specified signers and connection or not.
    /// Return true/false or throw error.
    pub fn verify_data(
        signers: Vec<KeySigner>,
        ledger_connection: Option<LedgerConnectionDartWrapper>,
        data: String,
    ) -> anyhow::Result<bool> {
        let builder = map_keystore_builder(signers, ledger_connection)?;
        Ok(verify_data(builder, data))
    }
}
fn map_keystore_builder(
    signers: Vec<KeySigner>,
    connection: Option<LedgerConnectionDartWrapper>,
) -> anyhow::Result<KeyStoreBuilder> {
    let mut keystore_builder = KeyStore::builder();
    if signers.contains(&KeySigner::Encrypted) {
        keystore_builder = keystore_builder
            .with_signer::<EncryptedKeySigner>(
                &KeySigner::Encrypted.to_string(),
                EncryptedKeySigner::new(),
            )
            .handle_error()?;
    }
    if signers.contains(&KeySigner::Derived) {
        keystore_builder = keystore_builder
            .with_signer::<DerivedKeySigner>(
                &KeySigner::Derived.to_string(),
                DerivedKeySigner::new(),
            )
            .handle_error()?;
    }
    if signers.contains(&KeySigner::Ledger) {
        keystore_builder = keystore_builder
            .with_signer::<LedgerKeySigner>(
                &KeySigner::Ledger.to_string(),
                LedgerKeySigner::new(connection.unwrap().get_connection().get_connection()),
            )
            .handle_error()?;
    }
    Ok(keystore_builder)
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/core/accounts_storage/accounts_storage_api.rs
///----------------------------

/// Implementation of AccountsStorage
pub struct AccountsStorageImpl {
    pub inner_storage: RustOpaque<Arc<dyn AccountsStorageBoxTrait>>,
}
impl AccountsStorageImpl {
    /// Create AccountsStorage or throw error
    pub fn new(storage: StorageDartWrapper) -> anyhow::Result<AccountsStorageImpl> {
        Ok(Self {
            inner_storage: AccountsStorageBox::create(storage.get_storage().get_storage())?,
        })
    }
    /// Get list of accounts.
    /// Returns json-encoded List of AssetsList or throw error
    pub fn get_entries(&self) -> anyhow::Result<String> {
        async_run!(self.inner_storage.get_entries().await)
    }
    /// Add new account to storage and return its instance.
    /// account - json-encoded AccountToAdd.
    /// Return json-encoded AssetsList or throw error.
    pub fn add_account(&self, account: String) -> anyhow::Result<String> {
        async_run!(self.inner_storage.add_account(account).await)
    }
    /// Add list of new accounts to storage and return it instances.
    /// account - json-encoded list of AccountToAdd.
    /// Return json-encoded list of AssetsList or throw error.
    pub fn add_accounts(&self, accounts: String) -> anyhow::Result<String> {
        async_run!(self.inner_storage.add_accounts(accounts).await)
    }
    /// Rename existed account and return its renamed instance.
    /// account_address - address of account
    /// name - new name of account
    /// Return json-encoded AssetsList or throw error.
    pub fn rename_account(&self, account_address: String, name: String) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .rename_account(account_address, name)
                .await
        )
    }
    /// Add token wallet signature to account (add new token to account aka enable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contract - address of token in blockchain.
    /// Return updated AssetsList or throw error.
    pub fn add_token_wallet(
        &self,
        account_address: String,
        network_group: String,
        root_token_contract: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .add_token_wallet(account_address, network_group, root_token_contract)
                .await
        )
    }
    /// Add token wallets signatures to account (add new tokens to account aka enable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contracts - list of addresses of tokens in blockchain.
    /// Return true or throw error.
    pub fn add_token_wallets(
        &self,
        account_address: String,
        network_group: String,
        root_token_contracts: Vec<String>,
    ) -> anyhow::Result<bool> {
        async_run!(
            self.inner_storage
                .add_token_wallets(account_address, network_group, root_token_contracts)
                .await
        )
    }
    /// Remove token wallet signature from account (remove token from account aka disable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contract - address of token in blockchain.
    /// Return updated AssetsList or throw error.
    pub fn remove_token_wallet(
        &self,
        account_address: String,
        network_group: String,
        root_token_contract: String,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_storage
                .remove_token_wallet(account_address, network_group, root_token_contract)
                .await
        )
    }
    /// Remove token wallets signatures from account (remove tokens from account aka disable it via slider).
    /// account_address - address of account
    /// network_group - name of network group where this token must be visible, could be found in
    ///   connection info
    /// root_token_contracts - list of addresses of tokens in blockchain.
    /// Return true or throw error.
    pub fn remove_token_wallets(
        &self,
        account_address: String,
        network_group: String,
        root_token_contracts: Vec<String>,
    ) -> anyhow::Result<bool> {
        async_run!(
            self.inner_storage
                .remove_token_wallets(account_address, network_group, root_token_contracts)
                .await
        )
    }
    /// Remove account from storage and return its instance if it was removed.
    /// account_address - address of account
    /// Return json-encoded AssetsList that was removed or null or throw error.
    pub fn remove_account(&self, account_address: String) -> anyhow::Result<Option<String>> {
        async_run!(self.inner_storage.remove_account(account_address).await)
    }
    /// Remove list of account from storage and return it instances if it were removed.
    /// account_addresses - list of addresses of accounts.
    /// Return json-encoded list of AssetsList that were removed or throw error.
    pub fn remove_accounts(&self, account_addresses: Vec<String>) -> anyhow::Result<String> {
        async_run!(self.inner_storage.remove_accounts(account_addresses).await)
    }
    /// Clear storage and remove all data.
    /// Returns true or throw error
    pub fn clear(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_storage.clear().await)
    }
    /// Reload storage and read all data again.
    /// Returns true or throw error.
    pub fn reload(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_storage.reload().await)
    }
    /// Check if data is correct for storage.
    pub fn verify_data(data: String) -> bool {
        accounts_storage_verify_data(data)
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/core/generic_contract/generic_contract_api.rs
///----------------------------

#[frb(mirror(TransactionExecutionOptions))]
pub struct _TransactionExecutionOptions {
    pub disable_signature_check: bool,
    pub override_balance: Option<u64>,
}
pub struct GenericContractDartWrapper {
    pub inner_contract: RustOpaque<Arc<dyn GenericContractBoxTrait>>,
}
impl GenericContractDartWrapper {
    /// Create GenericContract by subscribing to its instance.
    /// address - address of contract
    /// preload_transactions - if transactions must be loaded during creation
    pub fn subscribe(
        instance_hash: String,
        address: String,
        preload_transactions: bool,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<GenericContractDartWrapper> {
        let contract = async_run!(
            GenericContractBox::subscribe(
                transport.get_transport(),
                address,
                preload_transactions,
                Arc::new(GenericContractSubscriptionHandlerImpl { instance_hash })
            )
            .await
        )
        .handle_error()?;
        Ok(Self {
            inner_contract: contract,
        })
    }
    /// Get address of contract.
    pub fn address(&self) -> String {
        async_run!(self.inner_contract.address().await)
    }
    /// Get json-encoded ContractState or throw error.
    pub fn contract_state(&self) -> anyhow::Result<String> {
        async_run!(self.inner_contract.contract_state().await)
    }
    /// Get list of json-encoded PendingTransaction or throw error.
    pub fn pending_transactions(&self) -> anyhow::Result<String> {
        async_run!(self.inner_contract.pending_transactions().await)
    }
    /// Get PollingMethod of contract or throw error.
    pub fn polling_method(&self) -> PollingMethod {
        async_run!(self.inner_contract.polling_method().await)
    }
    /// Execute transaction locally and return its instance.
    /// signed_message - json-encoded SignedMessage
    /// options - additional info for execution
    /// Return json-encoded Transaction or throw error.
    pub fn execute_transaction_locally(
        &self,
        signed_message: String,
        options: TransactionExecutionOptions,
    ) -> anyhow::Result<String> {
        async_run!(
            self.inner_contract
                .execute_transaction_locally(signed_message, options)
                .await
        )
    }
    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    pub fn estimate_fees(&self, signed_message: String) -> anyhow::Result<String> {
        async_run!(self.inner_contract.estimate_fees(signed_message).await)
    }
    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    pub fn send(&self, signed_message: String) -> anyhow::Result<String> {
        async_run!(self.inner_contract.send(signed_message).await)
    }
    /// Refresh contract and update its data.
    /// Returns true or throw error.
    pub fn refresh(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_contract.refresh().await)
    }
    /// Preload transactions of contract.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        async_run!(self.inner_contract.preload_transactions(from_lt).await)
    }
    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        async_run!(self.inner_contract.handle_block(block).await)
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

///----------------------------
/// CONTENT OF src/nekoton_wrapper/core/ton_wallet/ton_wallet_api.rs
///----------------------------

#[frb(mirror(PollingMethod))]
pub enum _PollingMethod {
    /// Manual polling once a minute or by a click.
    /// Used when there are no pending transactions
    Manual,
    /// Block-walking for GQL or fast refresh for ADNL.
    /// Used when there are some pending transactions
    Reliable,
}
pub struct TonWalletDartWrapper {
    pub inner_wallet: RustOpaque<Arc<dyn TonWalletBoxTrait>>,
}
impl TonWalletDartWrapper {
    /// Create TonWallet by subscribing to its instance by public_key.
    /// wallet_type - is json-encoded WalletType.
    /// public_key - is string representation of key
    pub fn subscribe(
        instance_hash: String,
        workchain_id: i8,
        public_key: String,
        wallet_type: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = async_run!(
            TonWalletBox::subscribe(
                transport.get_transport(),
                workchain_id,
                public_key,
                wallet_type,
                Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash })
            )
            .await
        )?;
        Ok(Self {
            inner_wallet: wallet,
        })
    }
    /// Create TonWallet by subscribing to its instance by address of wallet.
    pub fn subscribe_by_address(
        instance_hash: String,
        address: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = async_run!(
            TonWalletBox::subscribe_by_address(
                transport.get_transport(),
                address,
                Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash })
            )
            .await
        )?;
        Ok(Self {
            inner_wallet: wallet,
        })
    }
    /// Create TonWallet by subscribing to its instance by existed instance.
    /// existing_wallet - json-encoded ExistingWalletInfo.
    pub fn subscribe_by_existing(
        instance_hash: String,
        existing_wallet: String,
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
    ) -> anyhow::Result<TonWalletDartWrapper> {
        let wallet = async_run!(
            TonWalletBox::subscribe_by_existing(
                transport.get_transport(),
                existing_wallet,
                Arc::new(TonWalletSubscriptionHandlerImpl { instance_hash })
            )
            .await
        )?;
        Ok(Self {
            inner_wallet: wallet,
        })
    }
    /// Get workchain of wallet.
    pub fn workchain(&self) -> i8 {
        async_run!(self.inner_wallet.workchain().await)
    }
    /// Get address of wallet.
    pub fn address(&self) -> String {
        async_run!(self.inner_wallet.address().await)
    }
    /// Get public key of wallet.
    pub fn public_key(&self) -> String {
        async_run!(self.inner_wallet.public_key().await)
    }
    /// Get json-encoded WalletType or throw error.
    pub fn wallet_type(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.wallet_type().await)
    }
    /// Get json-encoded ContractState or throw error.
    pub fn contract_state(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.contract_state().await)
    }
    /// Get list of json-encoded PendingTransaction or throw error.
    pub fn pending_transactions(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.pending_transactions().await)
    }
    /// Get PollingMethod of wallet or throw error.
    pub fn polling_method(&self) -> PollingMethod {
        async_run!(self.inner_wallet.polling_method().await)
    }
    /// Get json-encoded TonWalletDetails or throw error.
    pub fn details(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.details().await)
    }
    /// Get json-encoded list of MultisigPendingTransaction or throw error.
    pub fn unconfirmed_transactions(&self) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.unconfirmed_transactions().await)
    }
    /// Get optional list of custodians.
    /// Returns list of public keys.
    pub fn custodians(&self) -> Option<Vec<String>> {
        async_run!(self.inner_wallet.custodians().await)
    }
    /// Prepare TonWallet for deploy action.
    /// expiration - json-encoded Expiration.
    /// Returns UnsignedMessage or throw error.
    pub fn prepare_deploy(&self, expiration: String) -> anyhow::Result<UnsignedMessageImpl> {
        async_run!(self.inner_wallet.prepare_deploy(expiration).await)
            .map(|m| UnsignedMessageImpl { inner_message: m })
    }
    /// Prepare TonWallet for deploy actions if wallet is multisig.
    /// expiration - json-encoded Expiration.
    /// custodians - list of public keys of custodians.
    /// req_confirms - count of required confirmations from 1 to custodians count
    /// Returns UnsignedMessage or throw error.
    pub fn prepare_deploy_with_multiple_owners(
        &self,
        expiration: String,
        custodians: Vec<String>,
        req_confirms: u8,
        expiration_time: Option<u32>,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        async_run!(
            self.inner_wallet
                .prepare_deploy_with_multiple_owners(
                    expiration,
                    custodians,
                    req_confirms,
                    expiration_time
                )
                .await
        )
        .map(|m| UnsignedMessageImpl { inner_message: m })
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
    pub fn prepare_transfer(
        &self,
        contract_state: String,
        public_key: String,
        destination: String,
        amount: String,
        bounce: bool,
        body: Option<String>,
        expiration: String,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        async_run!(
            self.inner_wallet
                .prepare_transfer(
                    contract_state,
                    public_key,
                    destination,
                    amount,
                    bounce,
                    body,
                    expiration,
                )
                .await
        )
        .map(|m| UnsignedMessageImpl { inner_message: m })
    }
    /// Prepare transaction for confirmation.
    /// contract_state - json-encoded RawContractState
    /// public_key - key of account that had initiated transfer
    /// transaction_id - id of transaction.
    /// expiration - json-encoded Expiration
    /// Returns UnsignedMessage or throw error.
    pub fn prepare_confirm_transaction(
        &self,
        contract_state: String,
        public_key: String,
        transaction_id: String,
        expiration: String,
    ) -> anyhow::Result<UnsignedMessageImpl> {
        async_run!(
            self.inner_wallet
                .prepare_confirm_transaction(contract_state, public_key, transaction_id, expiration)
                .await
        )
        .map(|m| UnsignedMessageImpl { inner_message: m })
    }
    /// Calculate fees for transaction.
    /// signed_message - json-encoded SignedMessage.
    /// Returns fees as string representation of u128 or throw error.
    pub fn estimate_fees(&self, signed_message: String) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.estimate_fees(signed_message).await)
    }
    /// Send message to blockchain and receive transaction of send.
    /// signed_message - json-encoded SignedMessage.
    /// Returns json-encoded PendingTransaction or throw error.
    pub fn send(&self, signed_message: String) -> anyhow::Result<String> {
        async_run!(self.inner_wallet.send(signed_message).await)
    }
    /// Refresh wallet and update its data.
    /// Returns true or throw error.
    pub fn refresh(&self) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.refresh().await)
    }
    /// Preload transactions of wallet.
    /// from_lt - offset for loading data, string representation of u64
    /// Returns true or throw error.
    pub fn preload_transactions(&self, from_lt: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.preload_transactions(from_lt).await)
    }
    /// Handle block of blockchain.
    /// block - base64-encoded Block.
    /// Return true or throw error.
    pub fn handle_block(&self, block: String) -> anyhow::Result<bool> {
        async_run!(self.inner_wallet.handle_block(block).await)
    }
    /// Find list of wallets of public_key and return them.
    /// wallet_types - json-encoded list of WalletType.
    /// public_key - key of account where wallets must be found.
    /// Return json-encoded list of ExistingWalletInfo or throw error.
    pub fn find_existing_wallets(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        public_key: String,
        workchain_id: i8,
        wallet_types: String,
    ) -> anyhow::Result<String> {
        async_run!(
            ton_wallet_find_existing_wallets(
                transport.get_transport(),
                public_key,
                workchain_id,
                wallet_types
            )
            .await
        )
    }
    /// Get information of account by its address.
    /// Return json-encoded ExistingWalletInfo or throw error.
    pub fn get_existing_wallet_info(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<String> {
        async_run!(ton_wallet_get_existing_wallet_info(transport.get_transport(), address,).await)
    }
    /// Get list of custodians of account by address.
    /// Return list of public keys or throw error.
    pub fn get_custodians(
        transport: RustOpaque<Arc<dyn TransportBoxTrait>>,
        address: String,
    ) -> anyhow::Result<Vec<String>> {
        async_run!(ton_wallet_get_custodians(transport.get_transport(), address,).await)
    }
}
/// Handler for TonWallet that calls dart methods and sends data
pub struct TonWalletSubscriptionHandlerImpl {
    pub instance_hash: String,
}
impl TonWalletSubscriptionHandler for TonWalletSubscriptionHandlerImpl {
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
    /// 0: list of TransactionWithData<TransactionAdditionalInfo>
    /// 1: TransactionsBatchInfo
    fn on_transactions_found(
        &self,
        transactions: Vec<TransactionWithData<TransactionAdditionalInfo>>,
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

///----------------------------
/// CONTENT OF src/nekoton_wrapper/models_api.rs
///----------------------------

/// -------------------------
/// Types to generate in dart
/// -------------------------
/// Mirror struct of MnemonicType
#[frb(mirror(MnemonicType))]
pub enum _MnemonicType {
    Legacy,
    Labs(u16),
}
/// Wrapper struct above GeneratedKey with suitable type for generation
pub struct GeneratedKeyG {
    pub words: Vec<String>,
    pub account_type: MnemonicType,
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/jrpc_connection_api.rs
///----------------------------

/// This is a wrapper structure above JrpcConnectionBoxTrait to provide instance in dart side.
pub struct JrpcConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn JrpcConnectionBoxTrait>>,
}
impl JrpcConnectionDartWrapper {
    pub fn new(instance_hash: String) -> JrpcConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(JrpcConnectionBox::create(Arc::new(
                JrpcConnectionImpl { instance_hash },
            ))),
        }
    }
    /// Method to provide real GqlConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn JrpcConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}
/// Implementation of nekoton's JrpcConnection
pub struct JrpcConnectionImpl {
    pub instance_hash: String,
}
#[async_trait]
impl JrpcConnection for JrpcConnectionImpl {
    async fn post(&self, req: JrpcRequest) -> anyhow::Result<String> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::String(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_string()
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/gql_connection_api.rs
///----------------------------

/// This is a wrapper structure above GqlConnectionBoxTrait to provide instance in dart side.
pub struct GqlConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn GqlConnectionBoxTrait>>,
}
impl GqlConnectionDartWrapper {
    pub fn new(is_local: bool, instance_hash: String) -> GqlConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(GqlConnectionBox::create(Arc::new(
                GqlConnectionImpl {
                    is_local,
                    instance_hash,
                },
            ))),
        }
    }
    /// Method to provide real GqlConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn GqlConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}
/// Implementation of nekoton's GqlConnection
struct GqlConnectionImpl {
    pub is_local: bool,
    pub instance_hash: String,
}
#[async_trait]
impl GqlConnection for GqlConnectionImpl {
    fn is_local(&self) -> bool {
        self.is_local
    }
    async fn post(&self, req: GqlRequest) -> anyhow::Result<String> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::String(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_string()
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/proto_connection_api.rs
///----------------------------

/// This is a wrapper structure above ProtoConnectionBoxTrait to provide instance in dart side.
pub struct ProtoConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn ProtoConnectionBoxTrait>>,
}
impl ProtoConnectionDartWrapper {
    pub fn new(instance_hash: String) -> ProtoConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(ProtoConnectionBox::create(Arc::new(
                ProtoConnectionImpl { instance_hash },
            ))),
        }
    }
    /// Method to provide real ProtoConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn ProtoConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}
/// Implementation of nekoton's ProtoConnection
pub struct ProtoConnectionImpl {
    pub instance_hash: String,
}
#[async_trait]
impl ProtoConnection for ProtoConnectionImpl {
    async fn post(&self, req: ProtoRequest) -> anyhow::Result<Vec<u8>> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::VecU8(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_vec_u8()
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/ledger_connection_api.rs
///----------------------------

/// This is a wrapper structure above LedgerConnectionBoxTrait to provide instance in dart side.
pub struct LedgerConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn LedgerConnectionBoxTrait>>,
}
impl LedgerConnectionDartWrapper {
    pub fn new(instance_hash: String) -> LedgerConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(LedgerConnectionBox::create(Arc::new(
                LedgerConnectionImpl { instance_hash },
            ))),
        }
    }
    /// Method to provide real LedgerConnection to KeyStore level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn LedgerConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}
/// Implementation of nekoton's LedgerConnection
pub struct LedgerConnectionImpl {
    pub instance_hash: String,
}
impl LedgerConnectionImpl {
    pub fn new(instance_hash: String) -> LedgerConnectionImpl {
        Self { instance_hash }
    }
}
#[async_trait]
impl external::LedgerConnection for LedgerConnectionImpl {
    async fn get_public_key(&self, account_id: u16) -> anyhow::Result<[u8; PUBLIC_KEY_LENGTH]> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("getPublicKey"),
            args: vec![caller::DynamicValue::U16(account_id)],
            named_args: vec![],
        };
        let res = caller::call(stub, true).as_string();
        match res {
            Ok(v) => Ok(hex::decode(v).unwrap().as_slice().try_into().unwrap()),
            Err(e) => Err(e),
        }
    }
    async fn sign(
        &self,
        account: u16,
        signature_id: Option<i32>,
        message: &[u8],
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        todo!()
    }
    async fn sign_transaction(
        &self,
        account: u16,
        wallet: u16,
        signature_id: Option<i32>,
        message: &[u8],
        context: &external::LedgerSignatureContext,
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        todo!()
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/storage_api.rs
///----------------------------

/// This is a wrapper structure above StorageBoxTrait to provide instance in dart side.
pub struct StorageDartWrapper {
    pub inner_storage: RustOpaque<Arc<dyn StorageBoxTrait>>,
}
impl StorageDartWrapper {
    pub fn new(instance_hash: String) -> StorageDartWrapper {
        Self {
            inner_storage: RustOpaque::new(StorageBox::create(Arc::new(StorageImpl {
                instance_hash,
            }))),
        }
    }
    /// Method to provide real Storage to keystore level, used only in rust
    pub(crate) fn get_storage(&self) -> Arc<dyn StorageBoxTrait> {
        (*self.inner_storage).clone()
    }
}
/// Implementation of nekoton's Storage
pub struct StorageImpl {
    pub instance_hash: String,
}
impl StorageImpl {
    pub fn new(instance_hash: String) -> StorageImpl {
        Self { instance_hash }
    }
}
#[async_trait]
impl Storage for StorageImpl {
    async fn get(&self, key: &str) -> anyhow::Result<Option<String>> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("get"),
            args: vec![DynamicValue::String(key.to_string())],
            named_args: vec![],
        };
        caller::call(stub, true).as_string_option()
    }
    async fn set(&self, key: &str, value: &str) -> anyhow::Result<()> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("set"),
            args: vec![],
            named_args: vec![
                DynamicNamedValue {
                    name: "key".to_string(),
                    value: Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Some(DynamicValue::String(value.to_string())),
                },
            ],
        };
        caller::call(stub, true).as_void()
    }
    fn set_unchecked(&self, key: &str, value: &str) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("setUnchecked"),
            args: vec![],
            named_args: vec![
                DynamicNamedValue {
                    name: "key".to_string(),
                    value: Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Some(DynamicValue::String(value.to_string())),
                },
            ],
        };
        caller::call(stub, false);
    }
    async fn remove(&self, key: &str) -> anyhow::Result<()> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("remove"),
            args: vec![],
            named_args: vec![DynamicNamedValue {
                name: "key".to_string(),
                value: Some(DynamicValue::String(key.to_string())),
            }],
        };
        caller::call(stub, true).as_void()
    }
    fn remove_unchecked(&self, key: &str) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("removeUnchecked"),
            args: vec![],
            named_args: vec![DynamicNamedValue {
                name: "key".to_string(),
                value: Some(DynamicValue::String(key.to_string())),
            }],
        };
        caller::call(stub, false);
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/helpers/abi_api.rs
///----------------------------

/// Check if public key is correct.
/// If no - throws error, if ok - return true
pub fn check_public_key(public_key: String) -> anyhow::Result<bool> {
    let _ = parse_public_key(public_key).handle_error();
    Ok(true)
}
/// Run contract local.
/// Return json-encoded ExecutionOutput or throws error.
///
/// input - is json-encoded AbiToken
pub fn run_local(
    account_stuff_boc: String,
    contract_abi: String,
    method: String,
    input: String,
    responsible: bool,
) -> anyhow::Result<String> {
    let account_stuff = parse_account_stuff(account_stuff_boc)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = contract_abi.function(&method).handle_error()?;
    let input = serde_json::from_str::<serde_json::Value>(&input).handle_error()?;
    let input = nekoton_abi::parse_abi_tokens(&method.inputs, input).handle_error()?;
    let output = if responsible {
        method
            .run_local_responsible(clock!().as_ref(), account_stuff, &input)
            .handle_error()?
    } else {
        method
            .run_local(clock!().as_ref(), account_stuff, &input)
            .handle_error()?
    };
    let tokens = output
        .tokens
        .map(|e| nekoton_abi::make_abi_tokens(&e).handle_error())
        .transpose()?;
    let execution_output = ExecutionOutput {
        output: tokens,
        code: output.result_code,
    };
    serde_json::to_string(&execution_output).handle_error()
}
/// Get address of tvc and contract_abi.
/// Returns list of [address, boc of state_init, hash] or throws error
pub fn get_expected_address(
    tvc: String,
    contract_abi: String,
    workchain_id: i8,
    public_key: Option<String>,
    init_data: String,
) -> anyhow::Result<Vec<String>> {
    let mut state_init = ton_block::StateInit::construct_from_base64(&tvc).handle_error()?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let public_key = public_key
        // .as_deref()
        .map(parse_public_key)
        .transpose()
        .handle_error()?;
    let params = contract_abi
        .data
        .values()
        .cloned()
        .map(|v| v.value)
        .collect::<Vec<_>>();
    let init_data = serde_json::from_str::<serde_json::Value>(&init_data).handle_error()?;
    let init_data = nekoton_abi::parse_abi_tokens(&params, init_data).handle_error()?;
    state_init.data = if let Some(data) = state_init.data.take() {
        Some(
            insert_state_init_data(
                &contract_abi,
                SliceData::load_cell(data).expect("Can't load cell"),
                &public_key,
                init_data,
            )
            .handle_error()?
            .into_cell(),
        )
    } else {
        None
    };
    let cell = state_init.serialize().handle_error()?;
    let repr_hash = cell.repr_hash().to_hex_string();
    Ok(vec![
        format!("{workchain_id}:{repr_hash}"),
        make_boc(&cell)?,
        repr_hash,
    ])
}
/// Returns base64-encoded body that was encoded or throws error
pub fn encode_internal_input(
    contract_abi: String,
    method: String,
    input: String,
) -> anyhow::Result<String> {
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = contract_abi.function(&method).handle_error()?;
    let input = serde_json::from_str::<serde_json::Value>(&input).handle_error()?;
    let input = nekoton_abi::parse_abi_tokens(&method.inputs, input).handle_error()?;
    let body = method
        .encode_internal_input(&input)
        .and_then(|e| e.into_cell())
        .handle_error()?;
    let body = ton_types::serialize_toc(&body).handle_error()?;
    Ok(base64::encode(body))
}
/// Returns json-encoded SignedMessage from nekoton or throws error
/// timeout - milliseconds
pub fn create_external_message_without_signature(
    dst: String,
    contract_abi: String,
    method: String,
    state_init: Option<String>,
    input: String,
    timeout: u32,
) -> anyhow::Result<String> {
    let dst = parse_address(dst)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = contract_abi.function(&method).handle_error()?;
    let state_init = state_init
        .as_deref()
        .map(ton_block::StateInit::construct_from_base64)
        .transpose()
        .handle_error()?;
    let input = serde_json::from_str::<serde_json::Value>(&input).handle_error()?;
    let input = nekoton_abi::parse_abi_tokens(&method.inputs, input).handle_error()?;
    let time = clock!().now_ms_u64();
    let expire_at = ExpireAt::new_from_millis(Expiration::Timeout(timeout), time);
    let mut header = HashMap::with_capacity(3);
    header.insert("time".to_string(), ton_abi::TokenValue::Time(time));
    header.insert(
        "expire".to_string(),
        ton_abi::TokenValue::Expire(expire_at.timestamp),
    );
    header.insert("pubkey".to_string(), ton_abi::TokenValue::PublicKey(None));
    let body = method
        .encode_input(&header, &input, false, None, Some(dst.clone()))
        .handle_error()?;
    let mut message =
        ton_block::Message::with_ext_in_header(ton_block::ExternalInboundMessageHeader {
            dst,
            ..Default::default()
        });
    if let Some(state_init) = state_init {
        message.set_state_init(state_init);
    }
    message.set_body(SliceData::load_builder(body)?);
    let signed_message = SignedMessage {
        message,
        expire_at: expire_at.timestamp,
    };
    serde_json::to_string(&signed_message).handle_error()
}
/// Create external unsigned message that can be listened and handled or throws error
/// timeout - milliseconds
pub fn create_external_message(
    dst: String,
    contract_abi: String,
    method: String,
    state_init: Option<String>,
    input: String,
    public_key: String,
    timeout: u32,
) -> anyhow::Result<UnsignedMessageImpl> {
    let dst = parse_address(dst)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = contract_abi.function(&method).handle_error()?;
    let state_init = state_init
        .as_deref()
        .map(ton_block::StateInit::construct_from_base64)
        .transpose()
        .handle_error()?;
    let input = serde_json::from_str::<serde_json::Value>(&input).handle_error()?;
    let input = nekoton_abi::parse_abi_tokens(&method.inputs, input).handle_error()?;
    let public_key = parse_public_key(public_key).handle_error()?;
    let mut message =
        ton_block::Message::with_ext_in_header(ton_block::ExternalInboundMessageHeader {
            dst,
            ..Default::default()
        });
    if let Some(state_init) = state_init {
        message.set_state_init(state_init);
    }
    let unsigned_message = make_labs_unsigned_message(
        clock!().as_ref(),
        message,
        Expiration::Timeout(timeout),
        &public_key,
        Cow::Owned(method.to_owned()),
        input,
    )
    .handle_error()?;
    Ok(UnsignedMessageImpl {
        inner_message: UnsignedMessageBox::create(unsigned_message),
    })
}
/// Parse payload and return optional json-encoded KnownPayload or throws error
pub fn parse_known_payload(payload: String) -> anyhow::Result<String> {
    let payload = parse_slice(payload)?;
    let known_payload = parse_payload(payload);
    serde_json::to_string(&known_payload).handle_error()
}
/// Decode input data and return json-encoded DecodedInput or throws error
pub fn decode_input(
    message_body: String,
    contract_abi: String,
    method: Option<String>,
    internal: bool,
) -> anyhow::Result<String> {
    let message_body = parse_slice(message_body)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = parse_method_name(method)?;
    let input =
        nekoton_abi::decode_input(&contract_abi, message_body, &method, internal).handle_error()?;
    match input {
        Some((method, input)) => {
            let input = nekoton_abi::make_abi_tokens(&input).handle_error()?;
            let input = DecodedInput {
                method: method.name.to_owned(),
                input,
            };
            serde_json::to_string(&input).handle_error()
        }
        None => Ok(serde_json::Value::Null.to_string()),
    }
}
/// Decode input data and return json-encoded DecodedEvent or throws error
pub fn decode_event(
    message_body: String,
    contract_abi: String,
    event: Option<String>,
) -> anyhow::Result<String> {
    let message_body = parse_slice(message_body)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let event = parse_method_name(event)?;
    let event = nekoton_abi::decode_event(&contract_abi, message_body, &event).handle_error()?;
    match event {
        Some((event, data)) => {
            let data = nekoton_abi::make_abi_tokens(&data).handle_error()?;
            let event = DecodedEvent {
                event: event.name.to_owned(),
                data,
            };
            serde_json::to_string(&event).handle_error()
        }
        None => Ok(serde_json::Value::Null.to_string()),
    }
}
/// Decode output data and return json-encoded DecodedOutput or throws error
pub fn decode_output(
    message_body: String,
    contract_abi: String,
    method: Option<String>,
) -> anyhow::Result<String> {
    let message_body = parse_slice(message_body)?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = parse_method_name(method)?;
    let output = nekoton_abi::decode_output(&contract_abi, message_body, &method).handle_error()?;
    match output {
        Some((method, output)) => {
            let output = nekoton_abi::make_abi_tokens(&output).handle_error()?;
            let output = DecodedOutput {
                method: method.name.to_owned(),
                output,
            };
            serde_json::to_string(&output).handle_error()
        }
        None => Ok(serde_json::Value::Null.to_string()),
    }
}
/// Decode transaction and return json-encoded DecodedTransaction or throws error
pub fn decode_transaction(
    transaction: String,
    contract_abi: String,
    method: Option<String>,
) -> anyhow::Result<String> {
    let transaction = serde_json::from_str::<ProviderTransaction>(&transaction).handle_error()?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = parse_method_name(method)?;
    let internal = transaction.in_msg.src.is_some();
    let in_msg_body = match transaction.in_msg.body {
        Some(body) => parse_slice(body)?,
        None => return Ok(serde_json::Value::Null.to_string()),
    };
    let method = match guess_method_by_input(&contract_abi, &in_msg_body, &method, internal)
        .handle_error()?
    {
        Some(method) => method,
        None => return Ok(serde_json::Value::Null.to_string()),
    };
    let input = method.decode_input(in_msg_body, internal).handle_error()?;
    let input = nekoton_abi::make_abi_tokens(&input).handle_error()?;
    let ext_out_msgs = transaction
        .out_msgs
        .iter()
        .filter_map(|e| {
            if e.dst.is_some() {
                return None;
            };
            Some(match e.body.to_owned() {
                Some(body) => Ok(parse_slice(body).ok()?),
                None => Err("Expected message body").handle_error(),
            })
        })
        .collect::<anyhow::Result<Vec<_>>>()?;
    let output = nekoton_abi::process_raw_outputs(&ext_out_msgs, method).handle_error()?;
    let output = nekoton_abi::make_abi_tokens(&output).handle_error()?;
    let decoded_transaction = DecodedTransaction {
        method: method.name.to_owned(),
        input,
        output,
    };
    serde_json::to_string(&decoded_transaction).handle_error()
}
/// Decode events of transaction and return json-encoded list of DecodedEvent or throws error
pub fn decode_transaction_events(
    transaction: String,
    contract_abi: String,
) -> anyhow::Result<String> {
    let transaction = serde_json::from_str::<ProviderTransaction>(&transaction).handle_error()?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let ext_out_msgs = transaction
        .out_msgs
        .iter()
        .filter_map(|e| {
            if e.dst.is_some() {
                return None;
            };
            Some(match e.body.to_owned() {
                Some(body) => Ok(parse_slice(body).ok()?),
                None => Err("Expected message body").handle_error(),
            })
        })
        .collect::<anyhow::Result<Vec<_>>>()?;
    let events = ext_out_msgs
        .into_iter()
        .filter_map(|e| {
            let id = nekoton_abi::read_function_id(&e).ok()?;
            let event = contract_abi.event_by_id(id).ok()?;
            let tokens = event.decode_input(e).ok()?;
            let data = match nekoton_abi::make_abi_tokens(&tokens) {
                Ok(data) => Ok(DecodedEvent {
                    event: event.name.to_owned(),
                    data,
                }),
                Err(err) => Err(err).handle_error(),
            };
            Some(data)
        })
        .collect::<anyhow::Result<Vec<_>>>()?;
    serde_json::to_string(&events).handle_error()
}
/// Returns hash of decoded boc or throws error
pub fn get_boc_hash(boc: String) -> anyhow::Result<String> {
    let body = base64::decode(boc).handle_error()?;
    let hash = ton_types::deserialize_tree_of_cells(&mut body.as_slice())
        .handle_error()?
        .repr_hash()
        .to_hex_string();
    Ok(hash)
}
/// Return base64 encoded bytes of tokens or throws error
/// returns [tvc, hash]
pub fn pack_into_cell(
    params: String,
    tokens: String,
    version: Option<String>,
) -> anyhow::Result<Vec<String>> {
    let params = parse_params_list(params)?;
    let tokens = serde_json::from_str::<serde_json::Value>(&tokens).handle_error()?;
    let tokens = nekoton_abi::parse_abi_tokens(&params, tokens).handle_error()?;
    let version = parse_optional_abi_version(version)?;
    let cell = nekoton_abi::pack_into_cell(&tokens, version).handle_error()?;
    make_boc_with_hash(cell)
}
/// Parse list of params and return json-encoded Tokens or throws error
pub fn unpack_from_cell(
    params: String,
    boc: String,
    allow_partial: bool,
    version: Option<String>,
) -> anyhow::Result<String> {
    let params = parse_params_list(params)?;
    let body = base64::decode(boc).handle_error()?;
    let cell = ton_types::deserialize_tree_of_cells(&mut body.as_slice()).handle_error()?;
    let version = parse_optional_abi_version(version)?;
    let tokens =
        nekoton_abi::unpack_from_cell(&params, SliceData::load_cell(cell)?, allow_partial, version)
            .and_then(|e| nekoton_abi::make_abi_tokens(&e))?;
    serde_json::to_string(&tokens).handle_error()
}
/// Pack address std smd or throw error
/// Returns new packed address as string
pub fn pack_std_smc_addr(
    addr: String,
    base64_url: bool,
    bounceable: bool,
) -> anyhow::Result<String> {
    let addr = parse_address(addr)?;
    let packed_addr =
        nekoton_utils::pack_std_smc_addr(base64_url, &addr, bounceable).handle_error()?;
    Ok(packed_addr)
}
/// Unpack address std smd or throw error.
/// Returns json-encoded MsgAddressInt
pub fn unpack_std_smc_addr(packed: String, base64_url: bool) -> anyhow::Result<String> {
    let unpacked_addr = nekoton_utils::unpack_std_smc_addr(&packed, base64_url)
        .handle_error()?
        .to_string();
    Ok(unpacked_addr)
}
/// Return true if address is valid, false otherwise
pub fn validate_address(address: String) -> bool {
    nekoton_utils::validate_address(&address)
}
/// Repack address and return json-encoded MsgAddressInt or throw error
pub fn repack_address(address: String) -> anyhow::Result<String> {
    let address = nekoton_utils::repack_address(&address)
        .handle_error()?
        .to_string();
    serde_json::to_string(&address).handle_error()
}
/// Extract public key from boc and return it or throw error
pub fn extract_public_key(boc: String) -> anyhow::Result<String> {
    let public_key = parse_account_stuff(boc)
        .and_then(|e| nekoton_abi::extract_public_key(&e).handle_error())
        .map(hex::encode)?;
    Ok(public_key)
}
/// Convert code to base64 tvc string and return it or throw error
/// returns [tvc, hash]
pub fn code_to_tvc(code: String) -> anyhow::Result<Vec<String>> {
    let cell = parse_cell(code).handle_error()?;
    let state_init = nekoton_abi::code_to_tvc(cell).handle_error()?;
    serialize_into_boc_with_hash(&state_init)
}
/// Merge code and data to tvc base64 string and return it or throw error
/// returns [tvc, hash]
pub fn merge_tvc(code: String, data: String) -> anyhow::Result<Vec<String>> {
    let state_init = ton_block::StateInit {
        code: Some(parse_cell(code)?),
        data: Some(parse_cell(data)?),
        ..Default::default()
    };
    serialize_into_boc_with_hash(&state_init)
}
/// Split base64 tvc string into data and code.
/// Return vec![data, code] or throw error
pub fn split_tvc(tvc: String) -> anyhow::Result<Vec<Option<String>>> {
    let state_init = ton_block::StateInit::construct_from_base64(&tvc).handle_error()?;
    let data = match state_init.data {
        Some(data) => {
            let data = ton_types::serialize_toc(&data).handle_error()?;
            Some(base64::encode(data))
        }
        None => None,
    };
    let code = match state_init.code {
        Some(code) => {
            let code = ton_types::serialize_toc(&code).handle_error()?;
            Some(base64::encode(code))
        }
        None => None,
    };
    Ok(vec![data, code])
}
/// Set salt to code and return base64-encoded string or throw error
/// returns [tvc, hash]
pub fn set_code_salt(code: String, salt: String) -> anyhow::Result<Vec<String>> {
    let cell = nekoton_abi::set_code_salt(parse_cell(code)?, parse_cell(salt)?)?;
    make_boc_with_hash(cell)
}
/// Get salt from code if possible and return base64-encoded salt or throw error
pub fn get_code_salt(code: String) -> anyhow::Result<Option<String>> {
    let salt = match nekoton_abi::get_code_salt(parse_cell(code)?).handle_error()? {
        Some(salt) => Some(base64::encode(
            ton_types::serialize_toc(&salt).handle_error()?,
        )),
        None => None,
    };
    Ok(salt)
}
/// Run contract locally.
/// [config] - base64-encoded ConfigParams after (getBlockchainConfig)
/// [message] - base64-encoded Message after (encodeInternalMessage)
/// [utime] - unixtime in milliseconds
/// [account] - account address
/// Returns [boc, transaction] if everything is ok or
/// [error_code] if transaction failed
/// or throws error
pub fn execute_local(
    config: String,
    account: String,
    message: String,
    utime: u32,
    disable_signature_check: bool,
    overwrite_balance: Option<String>,
    global_id: Option<i32>,
) -> anyhow::Result<Vec<String>> {
    let mut account = parse_cell(account)?;
    let last_trans_lt = ton_block::Account::construct_from_cell(account.clone())
        .handle_error()?
        .last_tr_time()
        .unwrap_or_default();
    let message = ton_block::Message::construct_from_base64(&message).handle_error()?;
    if let Some(amount) = overwrite_balance {
        let amount = amount.trim().parse::<u64>().handle_error()?;
        let balance = ton_block::CurrencyCollection::with_grams(amount);
        let mut new_account = ton_block::Account::construct_from_cell(account).handle_error()?;
        match &mut new_account {
            new_account @ ton_block::Account::AccountNone => {
                let address = message
                    .dst()
                    .ok_or("Message without destination address")
                    .handle_error()?;
                *new_account = ton_block::Account::with_address_and_ballance(&address, &balance);
            }
            ton_block::Account::Account(stuff) => {
                stuff.storage.balance = balance;
            }
        };
        account = new_account.serialize().handle_error()?;
    };
    let global_id = global_id.unwrap_or(42);
    let config = ton_block::ConfigParams::construct_from_base64(&config).handle_error()?;
    let config = ton_executor::BlockchainConfig::with_config(config, global_id).handle_error()?;
    let mut executor = ton_executor::OrdinaryTransactionExecutor::new(config);
    executor.set_signature_check_disabled(disable_signature_check);
    let params = ton_executor::ExecuteParams {
        block_unixtime: utime,
        block_lt: last_trans_lt + 10,
        last_tr_lt: Arc::new(AtomicU64::new(last_trans_lt + 1)),
        behavior_modifiers: Some(executor.behavior_modifiers()),
        ..Default::default()
    };
    let tx = match executor.execute_with_libs_and_params(Some(&message), &mut account, params) {
        Ok(tx) => {
            let hash = tx.hash().handle_error()?;
            Transaction::try_from((hash, tx)).handle_error()?
        }
        Err(e) => {
            return match e.downcast_ref::<ton_executor::ExecutorError>() {
                Some(ton_executor::ExecutorError::NoAcceptError(code, _)) => {
                    Ok(vec![code.to_string()])
                }
                _ => Err(e).handle_error(),
            }
        }
    };
    Ok(vec![
        make_boc(&account)?,
        serde_json::to_string(&tx).handle_error()?,
    ])
}
/// Unpack data by contract.
/// Returns [option publicKey, json-encoded Map<String, Token>] or throw error
pub fn unpack_init_data(contract_abi: String, data: String) -> anyhow::Result<Vec<Option<String>>> {
    type UnpackedData = (Option<ed25519_dalek::PublicKey>, Vec<ton_abi::Token>);
    fn unpack_init_data_impl(
        contract_abi: ton_abi::Contract,
        data: ton_types::Cell,
    ) -> anyhow::Result<UnpackedData> {
        let data = ton_types::SliceData::load_cell(data)?;
        let map = ton_types::HashmapE::with_hashmap(
            ton_abi::Contract::DATA_MAP_KEYLEN,
            data.reference_opt(0),
        );
        let pubkey = match map.get(serialize_state_init_data_key(0)?)? {
            Some(mut pubkey) => {
                let pubkey = pubkey.get_next_hash()?;
                Some(ed25519_dalek::PublicKey::from_bytes(pubkey.as_slice())?)
            }
            None => None,
        };
        let mut tokens = Vec::with_capacity(contract_abi.data.len());
        for item in contract_abi.data.into_values() {
            if let Some(value) = map.get(serialize_state_init_data_key(item.key)?)? {
                tokens.append(&mut ton_abi::TokenValue::decode_params(
                    &[item.value],
                    value,
                    &contract_abi.abi_version,
                    false,
                )?);
            }
        }
        Ok((pubkey, tokens))
    }
    let contract_abi = parse_contract_abi(contract_abi)?;
    let data = parse_cell(data)?;
    let (pubkey, data) = unpack_init_data_impl(contract_abi, data).handle_error()?;
    Ok(vec![
        pubkey.map(hex::encode),
        Some(serde_json::to_string(&make_abi_tokens(&data)?)?),
    ])
}
/// Unpack contract fields.
/// Returns optional json-encoded Map<String, Token> or throw error
pub fn unpack_contract_fields(
    contract_abi: String,
    boc: String,
    allow_partial: bool,
) -> anyhow::Result<Option<String>> {
    let contract = parse_contract_abi(contract_abi)?;
    let account_stuff = parse_account_stuff(boc)?;
    let data = match account_stuff.storage.state {
        ton_block::AccountState::AccountActive { state_init } => match state_init.data {
            Some(data) => ton_types::SliceData::load_cell(data).handle_error()?,
            None => return Err("Contract state data is empty").handle_error(),
        },
        _ => return Ok(None),
    };
    let tokens = ton_abi::TokenValue::decode_params(
        &contract.fields,
        data,
        &contract.abi_version,
        allow_partial,
    )
    .handle_error()?;
    Ok(Some(serde_json::to_string(&make_abi_tokens(&tokens)?)?))
}
/// Returns json-encoded SignedMessage or throws error
/// dst - destination address
/// timeout - milliseconds
pub fn create_raw_external_message(
    dst: String,
    state_init: Option<String>,
    body: Option<String>,
    timeout: u32,
) -> anyhow::Result<String> {
    // Parse params
    let dst = parse_address(dst)?;
    let time = clock!().now_ms_u64();
    let expire_at = ExpireAt::new_from_millis(Expiration::Timeout(timeout), time);
    // Build message
    let mut message =
        ton_block::Message::with_ext_in_header(ton_block::ExternalInboundMessageHeader {
            dst,
            ..Default::default()
        });
    let state_init = state_init
        .as_deref()
        .map(ton_block::StateInit::construct_from_base64)
        .transpose()
        .handle_error()?;
    if let Some(state_init) = state_init {
        message.set_state_init(state_init);
    }
    if let Some(body) = body {
        message.set_body(parse_slice(body)?);
    }
    serde_json::to_string(&nekoton::crypto::SignedMessage {
        message,
        expire_at: expire_at.timestamp,
    })
    .handle_error()
}
/// Returns base-64 encoded Message or throws error
/// src - address of sender
/// dst - address of destination
/// body - base64-encoded data
pub fn encode_internal_message(
    src: Option<String>,
    dst: String,
    bounce: bool,
    state_init: Option<String>,
    body: Option<String>,
    amount: String,
    bounced: Option<bool>,
) -> anyhow::Result<String> {
    let src = match src {
        Some(src) => ton_block::MsgAddressIntOrNone::Some(parse_address(src)?),
        None => ton_block::MsgAddressIntOrNone::None,
    };
    let dst = parse_address(dst)?;
    let amount = amount.parse::<u128>().handle_error()?;
    let mut message = ton_block::Message::with_int_header(ton_block::InternalMessageHeader {
        ihr_disabled: true,
        bounce,
        src,
        dst,
        value: amount.into(),
        bounced: bounced.unwrap_or_default(),
        ..Default::default()
    });
    let state_init = state_init
        .as_deref()
        .map(ton_block::StateInit::construct_from_base64)
        .transpose()
        .handle_error()?;
    if let Some(state_init) = state_init {
        message.set_state_init(state_init);
    }
    if let Some(body) = body {
        message.set_body(parse_slice(body)?);
    }
    serialize_into_boc(&message)
}
/// Returns base-64 encoded Account or throws error
pub fn make_full_account_boc(account_stuff_boc: Option<String>) -> anyhow::Result<String> {
    let account = match account_stuff_boc {
        Some(stuff) => ton_block::Account::Account(parse_account_stuff(stuff)?),
        None => ton_block::Account::AccountNone,
    };
    serialize_into_boc(&account)
}
/// Returns optional json-encoded FullContractState or throws error
/// account - base64-encoded boc after execute_local
pub fn parse_full_account_boc(account: String) -> anyhow::Result<Option<String>> {
    let account = parse_cell(account)?;
    let account = if nekoton::utils::is_empty_cell(&account.repr_hash()) {
        nekoton::transport::models::RawContractState::NotExists {
            timings: nekoton::abi::GenTimings::Unknown,
        }
    } else {
        match ton_block::Account::construct_from_cell(account).handle_error()? {
            ton_block::Account::Account(account) => {
                let last_transaction_id = nekoton::abi::LastTransactionId::Inexact {
                    latest_lt: account.storage.last_trans_lt,
                };
                nekoton::transport::models::RawContractState::Exists(
                    nekoton::transport::models::ExistingContract {
                        account,
                        timings: nekoton::abi::GenTimings::Unknown,
                        last_transaction_id,
                    },
                )
            }
            ton_block::Account::AccountNone => {
                nekoton::transport::models::RawContractState::NotExists {
                    timings: nekoton::abi::GenTimings::Unknown,
                }
            }
        }
    };
    make_full_contract_state(account)
}
pub fn compute_storage_fee(
    config: String,
    account: String,
    utime: u32,
    is_masterchain: bool,
) -> anyhow::Result<String> {
    let account = parse_account_stuff(account)?;
    let config = ton_executor::BlockchainConfig::with_config(
        ton_block::ConfigParams::construct_from_base64(&config)?,
        0,
    )?;
    let utime = std::cmp::max(utime, account.storage_stat.last_paid);
    let gas_config = config.get_gas_config(is_masterchain);
    let mut account_status = match &account.storage.state {
        ton_block::AccountState::AccountUninit => "Uninit",
        ton_block::AccountState::AccountFrozen { .. } => "Frozen",
        ton_block::AccountState::AccountActive { .. } => "Active",
    };
    let storage_fee = config.calc_storage_fee(&account.storage_stat, is_masterchain, utime)?;
    let mut storage_fee_debt = account.storage_stat.due_payment;
    let total_fee = storage_fee + storage_fee_debt.unwrap_or_default();
    if let Some(total_fee) = total_fee.checked_sub(&account.storage.balance.grams) {
        storage_fee_debt = Some(total_fee);
        if account_status == "Active"
            && total_fee > ton_block::Grams::from(gas_config.freeze_due_limit)
        {
            account_status = "Frozen";
        } else if (account_status == "Uninit" || account_status == "Frozen")
            && total_fee > ton_block::Grams::from(gas_config.delete_due_limit)
        {
            account_status = "Nonexist";
        }
    }
    let data = serde_json::to_string(&StorageFeeInfo {
        storage_fee: storage_fee.to_string(),
        storage_fee_debt: storage_fee_debt.map(|e| e.to_string()),
        account_status: account_status.to_owned(),
        freeze_due_limit: gas_config.freeze_due_limit.to_string(),
        delete_due_limit: gas_config.delete_due_limit.to_string(),
    })?;
    Ok(data)
}
#[derive(Serialize, Deserialize)]
struct ProviderTransaction {
    #[serde(rename = "inMessage")]
    in_msg: ProviderMessage,
    #[serde(rename = "outMessages")]
    out_msgs: Vec<ProviderMessage>,
}
#[derive(Serialize, Deserialize)]
struct ProviderMessage {
    src: Option<String>,
    dst: Option<String>,
    body: Option<String>,
}

///----------------------------
/// CONTENT OF src/utils/tests_api.rs
///----------------------------

// logger tests
pub fn test_logger_info(string: String) {
    info!("Info: {string}");
}
pub fn test_logger_debug(string: String) {
    debug!("Debug: {string}");
}
pub fn test_logger_warn(string: String) {
    warn!("Warn: {string}");
}
pub fn test_logger_error(string: String) {
    error!("Error: {string}");
}
pub fn test_logger_panic(string: String) {
    panic!("Panic: {}", string);
}
// caller tests
pub fn test_caller_call_test0_async(string: String, need_result: bool) -> caller::DynamicValue {
    info!("test_caller_call_test0_async {string}");
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("test0"),
        args: vec![caller::DynamicValue::String(string)],
        named_args: vec![],
    };
    caller::call(stub, need_result)
}
pub fn test_caller_call_test0_sync(
    string: String,
    need_result: bool,
) -> SyncReturn<caller::DynamicValue> {
    info!("test_caller_call_test0_sync {string}");
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("test0"),
        args: vec![caller::DynamicValue::String(string)],
        named_args: vec![],
    };
    SyncReturn(caller::call(stub, need_result))
}
pub fn test_caller_call_test1_async(string: String, need_result: bool) -> caller::DynamicValue {
    info!("test_caller_call_test1_async {string}");
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("test1"),
        args: vec![caller::DynamicValue::String(string)],
        named_args: vec![],
    };
    caller::call(stub, need_result)
}

///----------------------------
/// CONTENT OF src/utils/api.rs
///----------------------------

/// Init utils
pub fn init_logger(level: logger::LogLevel, mobile_logger: bool) {
    logger::init_logger(level, mobile_logger);
}
/// Create log stream
pub fn create_log_stream(s: StreamSink<logger::LogEntry>) {
    logger::SendToDartLogger::set_stream_sink(s);
}
/// Init tokio runtime
pub fn init_runtime() {
    init_tokio_runtime();
}
/// Init caller
pub fn init_caller(stream_sink: StreamSink<caller::DartCallStubRegistred>) {
    caller::set_stream_sink(stream_sink);
}
/// Callback functions for returning Dart method result
pub fn call_send_result(id: String, value: caller::DynamicValue) -> SyncReturn<()> {
    caller::call_send_result(id, value)
}
/// Set clock offset in milliseconds
pub fn set_clock_offset(offset_ms: i64) {
    update_clock_offset(offset_ms);
}
// TODO: remove all non-integration test related things FROM here
pub fn simple_log(string: String) {
    info!("Info: {string}");
    debug!("Debug: {string}");
    warn!("Warn: {string}");
    error!("Error: {string}");
}
pub fn simple_panic() {
    panic!("Just a panic");
}
pub fn simple_adder_sync(a: i32, b: i32) -> SyncReturn<i32> {
    SyncReturn(a + b)
}
pub fn simple_adder(a: i32, b: i32) -> i32 {
    a + b
}
pub trait MyFormat {
    fn my_format(&self) -> String;
}
impl MyFormat for i32 {
    fn my_format(&self) -> String {
        format!("i32 {self}")
    }
}
pub struct MyClass {
    pub val: i32,
}
impl MyClass {
    pub fn new(a: i32) -> MyClass {
        MyClass { val: a }
    }
    pub fn my_format(&self) -> String {
        self.val.my_format()
    }
}
pub fn stub_dv() -> caller::DynamicValue {
    caller::DynamicValue::U32(0)
}
pub fn stub_dcs() -> caller::DartCallStub {
    caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func0"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func0",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    }
}
pub fn simple_call_dart() {
    let ret = caller::call(stub_dcs(), true);
    debug!("simple_call_dart returns: {:?}", ret);
}
pub fn stub_call_dart(stub: caller::DartCallStub) {
    caller::call(stub, true);
}
pub fn simple_call_func0(need_result: bool) {
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func0"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func0",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    };
    let result = caller::call(stub, need_result);
    let dgbstr = if need_result {
        result.as_string()
    } else {
        Result::Ok(String::from("no return value"))
    };
    debug!("Something returned from simple_call_func0: {:?}", dgbstr);
}
pub fn simple_call_func1(need_result: bool) {
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func1"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func1",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    };
    debug!(
        "Something returned from simple_call_func1: {:?}",
        caller::call(stub, need_result)
    );
}
pub fn simple_call_func2() {
    let mut props = HashMap::new();
    props.insert(String::from("Key0"), String::from("Value0"));
    props.insert(String::from("Key1"), String::from("Value1"));
    let to_send_mega_struct = mega_struct::MegaStruct {
        name: String::from("megastruct from rust"),
        coords: mega_struct::Coords {
            x: 1.1,
            y: 2.2,
            z: 3.3,
        },
        props,
    };
    let to_send_dynamic_value = caller::DynamicValue::MegaStruct(to_send_mega_struct.to_json());
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func2"),
        args: vec![to_send_dynamic_value],
        named_args: vec![],
    };
    let mega_struct = caller::call(stub, true).as_mega_struct();
    debug!(
        "Something returned from simple_call_func2: name: {} debug: {:?}",
        mega_struct.name, mega_struct,
    );
}
pub fn simple_call_func3() {
    let duration = time::Duration::from_secs(2);
    thread::sleep(duration);
    debug!("Returned from simple_call_func3");
}
pub struct CallerTestClass {
    pub instance_hash: String,
    pub value: i32,
}
impl CallerTestClass {
    pub fn new(instance_hash: String, value: i32) -> CallerTestClass {
        Self {
            instance_hash,
            value,
        }
    }
    pub fn call_some_func(&self) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("request"),
            args: vec![caller::DynamicValue::String(String::from(
                "RequestOptionData",
            ))],
            named_args: vec![],
        };
        let result = caller::call(stub, true).as_string();
        debug!("Returned request from CallerTestClass: {}", result.unwrap());
    }
}
// TODO: remove all non-integration test related things TO here
