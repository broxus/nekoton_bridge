#![allow(unused_variables, dead_code)]

use crate::clock;
use crate::nekoton_wrapper::crypto::crypto_api::UnsignedMessageImpl;
use crate::nekoton_wrapper::crypto::models::UnsignedMessageBox;
use crate::nekoton_wrapper::helpers::models::{
    DecodedEvent, DecodedInput, DecodedOutput, DecodedTransaction, ExecutionOutput, StorageFeeInfo,
};
use crate::nekoton_wrapper::helpers::{
    make_boc, make_boc_with_hash, make_full_contract_state, parse_account_stuff, parse_cell,
    parse_contract_abi, parse_method_name, parse_optional_abi_version, parse_params_list,
    parse_slice, serialize_into_boc, serialize_into_boc_with_hash, serialize_state_init_data_key,
};
use crate::nekoton_wrapper::{parse_address, parse_public_key, HandleError};
use flutter_rust_bridge::SyncReturn;
use nekoton::core::models::{Expiration, ExpireAt, Transaction};
use nekoton::core::parsing::parse_payload;
use nekoton::core::utils::make_labs_unsigned_message;
use nekoton::crypto::SignedMessage;
use nekoton_abi::{guess_method_by_input, insert_state_init_data, make_abi_tokens, FunctionExt};
use nekoton_utils::Clock;
use serde::{Deserialize, Serialize};
use std::borrow::Cow;
use std::collections::HashMap;
use std::convert::TryFrom;
use std::str::FromStr;
use std::sync::atomic::AtomicU64;
use std::sync::Arc;
use ton_block::MsgAddressInt;
use ton_block::{Deserializable, GetRepresentationHash, Serializable};
use ton_executor::TransactionExecutor;
use ton_types::SliceData;

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

pub fn pack_address(
    address: String,
    is_url_safe: bool,
    bounceable: bool,
) -> SyncReturn<String> {
    let address = match MsgAddressInt::from_str(address.as_str()) {
        Ok(address) => address,
        Err(e) => nekoton_utils::unpack_std_smc_addr(address.as_str(), is_url_safe).unwrap(),
    };

    SyncReturn(nekoton_utils::pack_std_smc_addr(is_url_safe, &address, bounceable).unwrap())
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

    let amount = amount.parse::<u64>().handle_error()?;

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
    use nekoton_abi::num_traits::*;
    // use serde::{Deserialize, Serialize};

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
