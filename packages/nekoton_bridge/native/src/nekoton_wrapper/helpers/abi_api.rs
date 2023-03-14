#![allow(unused_variables, dead_code)]

use crate::clock;
use crate::nekoton_wrapper::crypto::crypto_api::UnsignedMessageImpl;
use crate::nekoton_wrapper::crypto::models::UnsignedMessageBox;
use crate::nekoton_wrapper::helpers::models::{
    DecodedEvent, DecodedInput, DecodedOutput, DecodedTransaction, ExecutionOutput,
};
use crate::nekoton_wrapper::helpers::{
    parse_account_stuff, parse_contract_abi, parse_method_name, parse_params_list, parse_slice,
};
use crate::nekoton_wrapper::{parse_public_key, HandleError, parse_address};
use nekoton::core::models::{Expiration, ExpireAt, Transaction};
use nekoton::core::parsing::parse_payload;
use nekoton::core::utils::make_labs_unsigned_message;
use nekoton::crypto::SignedMessage;
use nekoton_abi::{guess_method_by_input, insert_state_init_data, FunctionExt};
use std::borrow::Cow;
use std::collections::HashMap;
use std::time::{SystemTime, UNIX_EPOCH};
use ton_block::{Deserializable, Serializable};

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

    let time = SystemTime::now()
        .duration_since(UNIX_EPOCH)?
        .as_millis() as u64;

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
        inner_message: UnsignedMessageBox::new(unsigned_message),
    })
}

/// Parse payload and return json-encoded KnownPayload or throws error
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

/// Decode events of transaction and return json-encoded DecodedEvent or throws error
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
