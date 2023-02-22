use nekoton::crypto::{derive_from_phrase, dict, generate_key};
use flutter_rust_bridge::SyncReturn;
use crate::nekoton::{
    crypto::mnemonic::models::KeypairHelper, str_list_to_string_vec,
    str_vec_to_string_vec, HandleError, MatchResult,
};
use crate::nekoton::models_mapper::*;

pub use crate::nekoton::models_api::{GeneratedKeyG, MnemonicTypeG};

/// Generate seed phrase by specified mnemonic type
pub fn nt_generate_key(account_type: MnemonicTypeG) -> SyncReturn<GeneratedKeyG> {
    let key = generate_key(
        mnemonic_type_from_dart(account_type)
    );
    SyncReturn(GeneratedKeyG {
        words: str_vec_to_string_vec(key.words),
        account_type: mnemonic_type_to_dart(key.account_type),
    })
}

/// Get hints for input part of word of seed phrase to get possible words
/// input: acco
/// returns [account, accommodate, ...]
pub fn nt_get_hints(input: String) -> SyncReturn<Vec<String>> {
    SyncReturn(str_list_to_string_vec(dict::get_hints(input.as_str())))
}

/// Generate public and secret keys from seed phrase and mnemonic type
/// Returns json {'public': '...', 'secret': '...'}
pub fn nt_derive_from_phrase(phrase: String, mnemonic_type: MnemonicTypeG) -> SyncReturn<String> {
    // Result<Keypair, Error> {
    let keypair = derive_from_phrase(
        phrase.as_str(),
        mnemonic_type_from_dart(mnemonic_type),
    ).handle_error();
    SyncReturn(
        serde_json::to_value(KeypairHelper(keypair.unwrap()))
            .handle_error()
            .match_result(),
    )
}
