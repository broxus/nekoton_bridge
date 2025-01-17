#![allow(unused_variables, dead_code)]

use nekoton::crypto::{derive_from_phrase, dict, generate_key};

use crate::nekoton_wrapper::{
    crypto::mnemonic::models::KeypairHelper, models_api::GeneratedKeyG, str_list_to_string_vec,
    str_vec_to_string_vec, HandleError, JsonOrError,
};

pub use nekoton::crypto::MnemonicType;

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
