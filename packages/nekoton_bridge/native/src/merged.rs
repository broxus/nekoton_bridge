#![allow(unused)]
pub use crate::{
    clock,
    nekoton_wrapper::{
        crypto::{
            mnemonic::models::KeypairHelper,
            models::{UnsignedMessageBox, UnsignedMessageBoxTrait},
        },
        helpers::{
            models::{
                DecodedEvent, DecodedInput, DecodedOutput, DecodedTransaction, ExecutionOutput,
            },
            parse_account_stuff, parse_cell, parse_contract_abi, parse_method_name,
            parse_params_list, parse_slice,
        },
        parse_address, parse_public_key, str_list_to_string_vec, str_vec_to_string_vec,
        HandleError, JsonOrError,
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
        models::{Expiration, ExpireAt, Transaction},
        parsing::parse_payload,
        utils::make_labs_unsigned_message,
    },
    crypto::{
        derive_from_phrase, dict, generate_key, MnemonicType, SignedMessage, UnsignedMessage,
    },
    external,
    external::{GqlConnection, GqlRequest, JrpcConnection, JrpcRequest, Storage},
};
use nekoton_abi::{guess_method_by_input, insert_state_init_data, FunctionExt};
use std::{
    borrow::Cow,
    collections::HashMap,
    convert::{TryFrom, TryInto},
    time::{SystemTime, UNIX_EPOCH},
};
use ton_block::{Deserializable, Serializable};

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/ledger_key/ledger_api.rs
///----------------------------

pub const LEDGER_KEY_SIGNER_NAME: &str = "LedgerKeySigner";

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/crypto_api.rs
///----------------------------

/// Check signature by publicKey and data hash
pub fn verify_signature(
    public_key: String,
    data_hash: String,
    signature: String,
) -> Result<bool, anyhow::Error> {
    let public_key = parse_public_key(public_key).handle_error()?;
    let data_hash = match hex::decode(&data_hash) {
        Ok(data_hash) => data_hash,
        Err(e) => match base64::decode(&data_hash) {
            Ok(data_hash) => data_hash,
            Err(e) => return Err(anyhow::Error::msg(e)),
        },
    };
    if data_hash.len() != 32 {
        return Err(anyhow::Error::msg("Invalid data hash. Expected 32 bytes"));
    }
    let signature = match base64::decode(&signature) {
        Ok(signature) => signature,
        Err(e) => match hex::decode(&signature) {
            Ok(signature) => signature,
            Err(_) => return Err(anyhow::Error::msg(e)),
        },
    };
    let signature = match ed25519_dalek::Signature::try_from(signature.as_slice()) {
        Ok(signature) => signature,
        Err(_) => return Err(anyhow::Error::msg("Invalid signature. Expected 64 bytes")),
    };
    anyhow::Result::Ok(public_key.verify(&data_hash, &signature).is_ok())
}
/// This struct creates only in rust side and describes UnsignedMessage
pub struct UnsignedMessageImpl {
    pub inner_message: RustOpaque<Box<dyn UnsignedMessageBoxTrait>>,
}
impl UnsignedMessageImpl {
    pub fn refresh_timeout(&self) {
        self.inner_message.refresh_timeout();
    }
    /// Return current expiration timestamp of UnsignedMessage
    pub fn expire_at(&self) -> u32 {
        self.inner_message.expire_at()
    }
    /// Returns base64 encoded hash string of UnsignedMessage
    pub fn hash(&self) -> String {
        self.inner_message.hash()
    }
    pub fn sign(&self, signature: String) -> Result<String, anyhow::Error> {
        self.inner_message.sign(signature)
    }
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/encrypted_key/encrypted_key_api.rs
///----------------------------

pub const ENCRYPTED_KEY_SIGNER_NAME: &str = "EncryptedKeySigner";

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
) -> Result<String, anyhow::Error> {
    let keypair = derive_from_phrase(phrase.as_str(), mnemonic_type).handle_error()?;
    serde_json::to_value(KeypairHelper(keypair)).json_or_error()
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/derived_key/derived_key_api.rs
///----------------------------

pub const DERIVED_KEY_SIGNER_NAME: &str = "DerivedKeySigner";

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
/// Structure that is used with signing data
pub struct SignedData {
    /// hex encoded hash
    pub data_hash: String,
    /// base64 encoded data
    pub signature: String,
    /// hex encoded data
    pub signature_hex: String,
    /// Signatures
    pub signature_parts: SignatureParts,
}
/// Structure that is used with signing data
pub struct SignedDataRaw {
    /// base64 encoded data
    pub signature: String,
    /// hex encoded data
    pub signature_hex: String,
    /// Signatures
    pub signature_parts: SignatureParts,
}
/// Structure that is used with signing data
/// high and low looks like: 0x{hex_data}
pub struct SignatureParts {
    /// symbols before 32-th
    pub low: String,
    /// symbols after 32-th
    pub high: String,
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/external/jrpc_connection_api.rs
///----------------------------

/// Implementation of nekoton's JrpcConnection
pub struct JrpcConnectionImpl {
    pub instance_hash: String,
}
impl JrpcConnectionImpl {
    pub fn new(instance_hash: String) -> JrpcConnectionImpl {
        Self { instance_hash }
    }
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

/// Implementation of nekoton's GqlConnection
pub struct GqlConnectionImpl {
    pub is_local: bool,
    pub instance_hash: String,
}
impl GqlConnectionImpl {
    pub fn new(is_local: bool, instance_hash: String) -> GqlConnectionImpl {
        Self {
            is_local,
            instance_hash,
        }
    }
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
/// CONTENT OF src/nekoton_wrapper/external/ledger_connection_api.rs
///----------------------------

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
            Ok(v) => anyhow::Result::Ok(hex::decode(v).unwrap().as_slice().try_into().unwrap()),
            Err(e) => anyhow::Result::Err(e),
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
            args: vec![caller::DynamicValue::String(key.to_string())],
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
                    value: Option::Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Option::Some(DynamicValue::String(value.to_string())),
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
                    value: Option::Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Option::Some(DynamicValue::String(value.to_string())),
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
                value: Option::Some(DynamicValue::String(key.to_string())),
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
                value: Option::Some(DynamicValue::String(key.to_string())),
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
pub fn check_public_key(public_key: String) -> Result<bool, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
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
/// Returns list of [address, state_init] or throws error
pub fn get_expected_address(
    tvc: String,
    contract_abi: String,
    workchain_id: i8,
    public_key: Option<String>,
    init_data: String,
) -> Result<Vec<String>, anyhow::Error> {
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
            insert_state_init_data(&contract_abi, data.into(), &public_key, init_data)
                .handle_error()?
                .into_cell(),
        )
    } else {
        None
    };
    let cell = state_init.serialize().handle_error()?;
    let repr_hash = cell.repr_hash().to_hex_string();
    let address = format!("{workchain_id}:{repr_hash}");
    let state_init = ton_types::serialize_toc(&cell)
        .map(base64::encode)
        .handle_error()?;
    Ok(vec![address, state_init])
}
/// Returns base64-encoded body that was encoded or throws error
pub fn encode_internal_input(
    contract_abi: String,
    method: String,
    input: String,
) -> Result<String, anyhow::Error> {
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
pub fn create_external_message_without_signature(
    dst: String,
    contract_abi: String,
    method: String,
    state_init: Option<String>,
    input: String,
    timeout: u32,
) -> Result<String, anyhow::Error> {
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
    let time = SystemTime::now().duration_since(UNIX_EPOCH)?.as_millis() as u64;
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
    message.set_body(body.into());
    let signed_message = SignedMessage {
        message,
        expire_at: expire_at.timestamp,
    };
    serde_json::to_string(&signed_message).handle_error()
}
/// Create external unsigned message that can be listened and handled or throws error
pub fn create_external_message(
    dst: String,
    contract_abi: String,
    method: String,
    state_init: Option<String>,
    input: String,
    public_key: String,
    timeout: u32,
) -> Result<UnsignedMessageImpl, anyhow::Error> {
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
pub fn parse_known_payload(payload: String) -> Result<String, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
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
) -> Result<String, anyhow::Error> {
    let transaction = serde_json::from_str::<Transaction>(&transaction).handle_error()?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let method = parse_method_name(method)?;
    let internal = transaction.in_msg.src.is_some();
    let in_msg_body = match transaction.in_msg.body {
        Some(body) => body.data.into(),
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
                Some(body) => Ok(body.data.into()),
                None => Err("Expected message body").handle_error(),
            })
        })
        .collect::<Result<Vec<_>, anyhow::Error>>()?;
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
) -> Result<String, anyhow::Error> {
    let transaction = serde_json::from_str::<Transaction>(&transaction).handle_error()?;
    let contract_abi = parse_contract_abi(contract_abi)?;
    let ext_out_msgs = transaction
        .out_msgs
        .iter()
        .filter_map(|e| {
            if e.dst.is_some() {
                return None;
            };
            Some(match e.body.to_owned() {
                Some(body) => Ok(body.data.into()),
                None => Err("Expected message body").handle_error(),
            })
        })
        .collect::<Result<Vec<_>, anyhow::Error>>()?;
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
        .collect::<Result<Vec<_>, anyhow::Error>>()?;
    serde_json::to_string(&events).handle_error()
}
/// Returns hash of decoded boc or throws error
pub fn get_boc_hash(boc: String) -> Result<String, anyhow::Error> {
    let body = base64::decode(boc).handle_error()?;
    let hash = ton_types::deserialize_tree_of_cells(&mut body.as_slice())
        .handle_error()?
        .repr_hash()
        .to_hex_string();
    Ok(hash)
}
/// Return base64 encoded bytes of tokens or throws error
pub fn pack_into_cell(params: String, tokens: String) -> Result<String, anyhow::Error> {
    let params = parse_params_list(params)?;
    let tokens = serde_json::from_str::<serde_json::Value>(&tokens).handle_error()?;
    let tokens = nekoton_abi::parse_abi_tokens(&params, tokens).handle_error()?;
    let version = ton_abi::contract::AbiVersion { major: 2, minor: 2 };
    let cell = nekoton_abi::pack_into_cell(&tokens, version).handle_error()?;
    let bytes = ton_types::serialize_toc(&cell).handle_error()?;
    let bytes = base64::encode(bytes);
    Ok(bytes)
}
/// Parse list of params and return json-encoded Tokens or throws error
pub fn unpack_from_cell(
    params: String,
    boc: String,
    allow_partial: bool,
) -> Result<String, anyhow::Error> {
    let params = parse_params_list(params)?;
    let body = base64::decode(boc).handle_error()?;
    let cell = ton_types::deserialize_tree_of_cells(&mut body.as_slice()).handle_error()?;
    let version = ton_abi::contract::AbiVersion { major: 2, minor: 2 };
    let tokens = nekoton_abi::unpack_from_cell(&params, cell.into(), allow_partial, version)
        .handle_error()
        .and_then(|e| nekoton_abi::make_abi_tokens(&e).handle_error())?;
    serde_json::to_string(&tokens).handle_error()
}
/// Pack address std smd or throw error
/// Returns new packed address as string
pub fn pack_std_smc_addr(
    addr: String,
    base64_url: bool,
    bounceable: bool,
) -> Result<String, anyhow::Error> {
    let addr = parse_address(addr)?;
    let packed_addr =
        nekoton_utils::pack_std_smc_addr(base64_url, &addr, bounceable).handle_error()?;
    Ok(packed_addr)
}
/// Unpack address std smd or throw error.
/// Returns json-encoded MsgAddressInt
pub fn unpack_std_smc_addr(packed: String, base64_url: bool) -> Result<String, anyhow::Error> {
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
pub fn repack_address(address: String) -> Result<String, anyhow::Error> {
    let address = nekoton_utils::repack_address(&address)
        .handle_error()?
        .to_string();
    serde_json::to_string(&address).handle_error()
}
/// Extract public key from boc and return it or throw error
pub fn extract_public_key(boc: String) -> Result<String, anyhow::Error> {
    let public_key = parse_account_stuff(boc)
        .and_then(|e| nekoton_abi::extract_public_key(&e).handle_error())
        .map(hex::encode)?;
    Ok(public_key)
}
/// Convert code to base64 tvc string and return it or throw error
pub fn code_to_tvc(code: String) -> Result<String, anyhow::Error> {
    let cell = base64::decode(code).handle_error()?;
    let tvc = ton_types::deserialize_tree_of_cells(&mut cell.as_slice())
        .handle_error()
        .and_then(|e| nekoton_abi::code_to_tvc(e).handle_error())
        .and_then(|e| e.serialize().handle_error())
        .and_then(|e| ton_types::serialize_toc(&e).handle_error())
        .map(base64::encode)?;
    Ok(tvc)
}
/// Merge code and data to tvc base64 string and return it or throw error
pub fn merge_tvc(code: String, data: String) -> Result<String, anyhow::Error> {
    let state_init = ton_block::StateInit {
        code: Some(parse_cell(code)?),
        data: Some(parse_cell(data)?),
        ..Default::default()
    };
    let cell = state_init.serialize().handle_error()?;
    let bytes = ton_types::serialize_toc(&cell).handle_error()?;
    Ok(base64::encode(bytes))
}
/// Split base64 tvc string into data and code.
/// Return vec![data, code] or throw error
pub fn split_tvc(tvc: String) -> Result<Vec<Option<String>>, anyhow::Error> {
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
pub fn set_code_salt(code: String, salt: String) -> Result<String, anyhow::Error> {
    nekoton_abi::set_code_salt(parse_cell(code)?, parse_cell(salt)?)
        .and_then(|cell| ton_types::serialize_toc(&cell))
        .map(base64::encode)
        .handle_error()
}
/// Get salt from code if possible and return base64-encoded salt or throw error
pub fn get_code_salt(code: String) -> Result<Option<String>, anyhow::Error> {
    let salt = match nekoton_abi::get_code_salt(parse_cell(code)?).handle_error()? {
        Some(salt) => Some(base64::encode(
            ton_types::serialize_toc(&salt).handle_error()?,
        )),
        None => None,
    };
    Ok(salt)
}

///----------------------------
/// CONTENT OF src/utils/tests_api.rs
///----------------------------

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
/// Init caller
pub fn init_caller(stream_sink: StreamSink<caller::DartCallStubRegistred>) {
    caller::set_stream_sink(stream_sink);
}
/// Callback functions for returning Dart method result
pub fn call_send_result(id: String, value: caller::DynamicValue) {
    caller::call_send_result(id, value);
}
// TODO: all code below is only sandbox-related things
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
