#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
// EXTRA BEGIN
typedef struct DartCObject *WireSyncRust2DartDco;
typedef struct WireSyncRust2DartSse {
  uint8_t *ptr;
  int32_t len;
} WireSyncRust2DartSse;

typedef int64_t DartPort;
typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);
void store_dart_post_cobject(DartPostCObjectFnType ptr);
// EXTRA END
typedef struct _Dart_Handle* Dart_Handle;

typedef struct wire_cst_accounts_storage_impl {
  uintptr_t inner_storage;
} wire_cst_accounts_storage_impl;

typedef struct wire_cst_list_prim_u_8_strict {
  uint8_t *ptr;
  int32_t len;
} wire_cst_list_prim_u_8_strict;

typedef struct wire_cst_list_String {
  struct wire_cst_list_prim_u_8_strict **ptr;
  int32_t len;
} wire_cst_list_String;

typedef struct wire_cst_storage_dart_wrapper {
  uintptr_t inner_storage;
} wire_cst_storage_dart_wrapper;

typedef struct wire_cst_generic_contract_dart_wrapper {
  uintptr_t inner_contract;
} wire_cst_generic_contract_dart_wrapper;

typedef struct wire_cst_gql_transport_impl {
  uintptr_t inner_transport;
} wire_cst_gql_transport_impl;

typedef struct wire_cst_gql_connection_dart_wrapper {
  uintptr_t inner_connection;
} wire_cst_gql_connection_dart_wrapper;

typedef struct wire_cst_list_prim_i_32_loose {
  int32_t *ptr;
  int32_t len;
} wire_cst_list_prim_i_32_loose;

typedef struct wire_cst_jetton_wallet_dart_wrapper {
  uintptr_t inner_wallet;
} wire_cst_jetton_wallet_dart_wrapper;

typedef struct wire_cst_jrpc_transport_impl {
  uintptr_t inner_transport;
} wire_cst_jrpc_transport_impl;

typedef struct wire_cst_jrpc_connection_dart_wrapper {
  uintptr_t inner_connection;
} wire_cst_jrpc_connection_dart_wrapper;

typedef struct wire_cst_keystore_dart_wrapper {
  uintptr_t inner_keystore;
} wire_cst_keystore_dart_wrapper;

typedef struct wire_cst_KeySigner_Stub {
  bool field0;
} wire_cst_KeySigner_Stub;

typedef union KeySignerKind {
  struct wire_cst_KeySigner_Stub Stub;
} KeySignerKind;

typedef struct wire_cst_key_signer {
  int32_t tag;
  union KeySignerKind kind;
} wire_cst_key_signer;

typedef struct wire_cst_list_key_signer {
  struct wire_cst_key_signer *ptr;
  int32_t len;
} wire_cst_list_key_signer;

typedef struct wire_cst_ledger_connection_dart_wrapper {
  uintptr_t inner_connection;
} wire_cst_ledger_connection_dart_wrapper;

typedef struct wire_cst_unsigned_message_impl {
  uintptr_t inner_message;
} wire_cst_unsigned_message_impl;

typedef struct wire_cst_bip_39_mnemonic_data {
  uint16_t account_id;
  int32_t path;
  int32_t entropy;
} wire_cst_bip_39_mnemonic_data;

typedef struct wire_cst_MnemonicType_Bip39 {
  struct wire_cst_bip_39_mnemonic_data *field0;
} wire_cst_MnemonicType_Bip39;

typedef union MnemonicTypeKind {
  struct wire_cst_MnemonicType_Bip39 Bip39;
} MnemonicTypeKind;

typedef struct wire_cst_mnemonic_type {
  int32_t tag;
  union MnemonicTypeKind kind;
} wire_cst_mnemonic_type;

typedef struct wire_cst_proto_transport_impl {
  uintptr_t inner_transport;
} wire_cst_proto_transport_impl;

typedef struct wire_cst_proto_connection_dart_wrapper {
  uintptr_t inner_connection;
} wire_cst_proto_connection_dart_wrapper;

typedef struct wire_cst_token_wallet_dart_wrapper {
  uintptr_t inner_wallet;
} wire_cst_token_wallet_dart_wrapper;

typedef struct wire_cst_ton_wallet_dart_wrapper {
  uintptr_t inner_wallet;
} wire_cst_ton_wallet_dart_wrapper;

typedef struct wire_cst_list_opt_String {
  struct wire_cst_list_prim_u_8_strict **ptr;
  int32_t len;
} wire_cst_list_opt_String;

typedef struct wire_cst_list_prim_i_32_strict {
  int32_t *ptr;
  int32_t len;
} wire_cst_list_prim_i_32_strict;

typedef struct wire_cst_generated_key_g {
  struct wire_cst_list_String *words;
  struct wire_cst_mnemonic_type account_type;
} wire_cst_generated_key_g;

typedef struct wire_cst_latest_block {
  struct wire_cst_list_prim_u_8_strict *id;
  uint64_t end_lt;
  uint32_t gen_utime;
} wire_cst_latest_block;

typedef struct wire_cst_log_entry {
  int64_t time_millis;
  int32_t level;
  struct wire_cst_list_prim_u_8_strict *tag;
  struct wire_cst_list_prim_u_8_strict *msg;
  struct wire_cst_list_prim_u_8_strict *stack;
} wire_cst_log_entry;

typedef struct wire_cst_signature_parts {
  struct wire_cst_list_prim_u_8_strict *low;
  struct wire_cst_list_prim_u_8_strict *high;
} wire_cst_signature_parts;

typedef struct wire_cst_signed_data {
  struct wire_cst_list_prim_u_8_strict *data_hash;
  struct wire_cst_list_prim_u_8_strict *signature;
  struct wire_cst_list_prim_u_8_strict *signature_hex;
  struct wire_cst_signature_parts signature_parts;
} wire_cst_signed_data;

typedef struct wire_cst_signed_data_raw {
  struct wire_cst_list_prim_u_8_strict *signature;
  struct wire_cst_list_prim_u_8_strict *signature_hex;
  struct wire_cst_signature_parts signature_parts;
} wire_cst_signed_data_raw;

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_message_expired(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_message_sent(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_state_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_message_expired(uintptr_t that,
                                                                                                                                                 uintptr_t on_message_expired);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_message_sent(uintptr_t that,
                                                                                                                                              uintptr_t on_message_sent);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_state_changed(uintptr_t that,
                                                                                                                                               uintptr_t on_state_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found(uintptr_t that,
                                                                                                                                                    uintptr_t on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_get_is_local(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_get_on_post(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_set_is_local(uintptr_t that,
                                                                                                                  bool is_local);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_set_on_post(uintptr_t that,
                                                                                                                 uintptr_t on_post);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_get_on_balance_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_set_on_balance_changed(uintptr_t that,
                                                                                                                                              uintptr_t on_balance_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found(uintptr_t that,
                                                                                                                                                 uintptr_t on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JrpcConnectionImpl_auto_accessor_get_on_post(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__JrpcConnectionImpl_auto_accessor_set_on_post(uintptr_t that,
                                                                                                                  uintptr_t on_post);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_get_public_key(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_sign(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_sign_transaction(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_get_public_key(uintptr_t that,
                                                                                                                              uintptr_t on_get_public_key);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_sign(uintptr_t that,
                                                                                                                    uintptr_t on_sign);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_sign_transaction(uintptr_t that,
                                                                                                                                uintptr_t on_sign_transaction);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__ProtoConnectionImpl_auto_accessor_get_on_post(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__ProtoConnectionImpl_auto_accessor_set_on_post(uintptr_t that,
                                                                                                                   uintptr_t on_post);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_get(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_remove(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_remove_unchecked(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_set(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_set_unchecked(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_get(uintptr_t that,
                                                                                                          uintptr_t on_get);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_remove(uintptr_t that,
                                                                                                             uintptr_t on_remove);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_remove_unchecked(uintptr_t that,
                                                                                                                       uintptr_t on_remove_unchecked);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_set(uintptr_t that,
                                                                                                          uintptr_t on_set);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_set_unchecked(uintptr_t that,
                                                                                                                    uintptr_t on_set_unchecked);

void frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_new(int64_t port_,
                                                                     uintptr_t on_get,
                                                                     uintptr_t on_set,
                                                                     uintptr_t on_set_unchecked,
                                                                     uintptr_t on_remove,
                                                                     uintptr_t on_remove_unchecked);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_get_on_balance_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_set_on_balance_changed(uintptr_t that,
                                                                                                                                             uintptr_t on_balance_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found(uintptr_t that,
                                                                                                                                                uintptr_t on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_custodians_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_details_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_message_expired(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_message_sent(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_state_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_unconfirmed_transactions_changed(uintptr_t that);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_custodians_changed(uintptr_t that,
                                                                                                                                              uintptr_t on_custodians_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_details_changed(uintptr_t that,
                                                                                                                                           uintptr_t on_details_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_message_expired(uintptr_t that,
                                                                                                                                           uintptr_t on_message_expired);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_message_sent(uintptr_t that,
                                                                                                                                        uintptr_t on_message_sent);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_state_changed(uintptr_t that,
                                                                                                                                         uintptr_t on_state_changed);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found(uintptr_t that,
                                                                                                                                              uintptr_t on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_unconfirmed_transactions_changed(uintptr_t that,
                                                                                                                                                            uintptr_t on_unconfirmed_transactions_changed);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_account(int64_t port_,
                                                                                       struct wire_cst_accounts_storage_impl *that,
                                                                                       struct wire_cst_list_prim_u_8_strict *account);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_accounts(int64_t port_,
                                                                                        struct wire_cst_accounts_storage_impl *that,
                                                                                        struct wire_cst_list_prim_u_8_strict *accounts);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_token_wallet(int64_t port_,
                                                                                            struct wire_cst_accounts_storage_impl *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *account_address,
                                                                                            struct wire_cst_list_prim_u_8_strict *network_group,
                                                                                            struct wire_cst_list_prim_u_8_strict *root_token_contract);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_token_wallets(int64_t port_,
                                                                                             struct wire_cst_accounts_storage_impl *that,
                                                                                             struct wire_cst_list_prim_u_8_strict *account_address,
                                                                                             struct wire_cst_list_prim_u_8_strict *network_group,
                                                                                             struct wire_cst_list_String *root_token_contracts);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_clear(int64_t port_,
                                                                                 struct wire_cst_accounts_storage_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_get_entries(int64_t port_,
                                                                                       struct wire_cst_accounts_storage_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_new(int64_t port_,
                                                                               struct wire_cst_storage_dart_wrapper *storage);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_reload(int64_t port_,
                                                                                  struct wire_cst_accounts_storage_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_account(int64_t port_,
                                                                                          struct wire_cst_accounts_storage_impl *that,
                                                                                          struct wire_cst_list_prim_u_8_strict *account_address);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_accounts(int64_t port_,
                                                                                           struct wire_cst_accounts_storage_impl *that,
                                                                                           struct wire_cst_list_String *account_addresses);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_token_wallet(int64_t port_,
                                                                                               struct wire_cst_accounts_storage_impl *that,
                                                                                               struct wire_cst_list_prim_u_8_strict *account_address,
                                                                                               struct wire_cst_list_prim_u_8_strict *network_group,
                                                                                               struct wire_cst_list_prim_u_8_strict *root_token_contract);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_token_wallets(int64_t port_,
                                                                                                struct wire_cst_accounts_storage_impl *that,
                                                                                                struct wire_cst_list_prim_u_8_strict *account_address,
                                                                                                struct wire_cst_list_prim_u_8_strict *network_group,
                                                                                                struct wire_cst_list_String *root_token_contracts);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_rename_account(int64_t port_,
                                                                                          struct wire_cst_accounts_storage_impl *that,
                                                                                          struct wire_cst_list_prim_u_8_strict *account_address,
                                                                                          struct wire_cst_list_prim_u_8_strict *name);

void frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_verify_data(int64_t port_,
                                                                                       struct wire_cst_list_prim_u_8_strict *data);

void frbgen_nekoton_bridge_wire__crate__api__merged__create_log_stream(int64_t port_,
                                                                       struct wire_cst_list_prim_u_8_strict *s);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_address(int64_t port_,
                                                                                           struct wire_cst_generic_contract_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_contract_state(int64_t port_,
                                                                                                  struct wire_cst_generic_contract_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_estimate_fees(int64_t port_,
                                                                                                 struct wire_cst_generic_contract_dart_wrapper *that,
                                                                                                 struct wire_cst_list_prim_u_8_strict *signed_message);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_execute_transaction_locally(int64_t port_,
                                                                                                               struct wire_cst_generic_contract_dart_wrapper *that,
                                                                                                               struct wire_cst_list_prim_u_8_strict *signed_message,
                                                                                                               struct wire_cst_list_prim_u_8_strict *options);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_handle_block(int64_t port_,
                                                                                                struct wire_cst_generic_contract_dart_wrapper *that,
                                                                                                struct wire_cst_list_prim_u_8_strict *block);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_pending_transactions(int64_t port_,
                                                                                                        struct wire_cst_generic_contract_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_polling_method(int64_t port_,
                                                                                                  struct wire_cst_generic_contract_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_preload_transactions(int64_t port_,
                                                                                                        struct wire_cst_generic_contract_dart_wrapper *that,
                                                                                                        struct wire_cst_list_prim_u_8_strict *from_lt);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_refresh(int64_t port_,
                                                                                           struct wire_cst_generic_contract_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_send(int64_t port_,
                                                                                        struct wire_cst_generic_contract_dart_wrapper *that,
                                                                                        struct wire_cst_list_prim_u_8_strict *signed_message);

void frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_subscribe(int64_t port_,
                                                                                             struct wire_cst_list_prim_u_8_strict *address,
                                                                                             bool preload_transactions,
                                                                                             uintptr_t transport,
                                                                                             const void *on_message_sent,
                                                                                             const void *on_message_expired,
                                                                                             const void *on_state_changed,
                                                                                             const void *on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__gql_connection_dart_wrapper_new(bool is_local,
                                                                                                     const void *on_post);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_accounts_by_code_hash(int64_t port_,
                                                                                                  struct wire_cst_gql_transport_impl *that,
                                                                                                  struct wire_cst_list_prim_u_8_strict *code_hash,
                                                                                                  uint8_t limit,
                                                                                                  struct wire_cst_list_prim_u_8_strict *continuation);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_block(int64_t port_,
                                                                                  struct wire_cst_gql_transport_impl *that,
                                                                                  struct wire_cst_list_prim_u_8_strict *id);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_blockchain_config(int64_t port_,
                                                                                              struct wire_cst_gql_transport_impl *that,
                                                                                              bool force);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_contract_state(int64_t port_,
                                                                                           struct wire_cst_gql_transport_impl *that,
                                                                                           struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_dst_transaction(int64_t port_,
                                                                                            struct wire_cst_gql_transport_impl *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *message_hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_fee_factors(int64_t port_,
                                                                                        struct wire_cst_gql_transport_impl *that,
                                                                                        bool is_masterchain);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_full_contract_state(int64_t port_,
                                                                                                struct wire_cst_gql_transport_impl *that,
                                                                                                struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_latest_block(int64_t port_,
                                                                                         struct wire_cst_gql_transport_impl *that,
                                                                                         struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_network_id(int64_t port_,
                                                                                       struct wire_cst_gql_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_signature_id(int64_t port_,
                                                                                         struct wire_cst_gql_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_transaction(int64_t port_,
                                                                                        struct wire_cst_gql_transport_impl *that,
                                                                                        struct wire_cst_list_prim_u_8_strict *hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_transactions(int64_t port_,
                                                                                         struct wire_cst_gql_transport_impl *that,
                                                                                         struct wire_cst_list_prim_u_8_strict *address,
                                                                                         struct wire_cst_list_prim_u_8_strict *from_lt,
                                                                                         uint8_t count);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_new(struct wire_cst_gql_connection_dart_wrapper *gql_connection);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_simulate_transaction_tree(int64_t port_,
                                                                                                  struct wire_cst_gql_transport_impl *that,
                                                                                                  struct wire_cst_list_prim_u_8_strict *signed_message,
                                                                                                  struct wire_cst_list_prim_i_32_loose *ignored_compute_phase_codes,
                                                                                                  struct wire_cst_list_prim_i_32_loose *ignored_action_phase_codes);

void frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_wait_for_next_block(int64_t port_,
                                                                                            struct wire_cst_gql_transport_impl *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *current_block_id,
                                                                                            struct wire_cst_list_prim_u_8_strict *address,
                                                                                            uint64_t timeout);

void frbgen_nekoton_bridge_wire__crate__api__merged__init_logger(int64_t port_,
                                                                 int32_t level,
                                                                 bool mobile_logger);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_address(int64_t port_,
                                                                                        struct wire_cst_jetton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_balance(int64_t port_,
                                                                                        struct wire_cst_jetton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_contract_state(int64_t port_,
                                                                                               struct wire_cst_jetton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_estimate_min_attached_amount(int64_t port_,
                                                                                                             struct wire_cst_jetton_wallet_dart_wrapper *that,
                                                                                                             struct wire_cst_list_prim_u_8_strict *destination);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_root_details(int64_t port_,
                                                                                                        uintptr_t transport,
                                                                                                        struct wire_cst_list_prim_u_8_strict *token_root_address);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_root_details_from_jetton_wallet(int64_t port_,
                                                                                                                           uintptr_t transport,
                                                                                                                           struct wire_cst_list_prim_u_8_strict *token_wallet_address);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_wallet_details(int64_t port_,
                                                                                                          uintptr_t transport,
                                                                                                          struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_handle_block(int64_t port_,
                                                                                             struct wire_cst_jetton_wallet_dart_wrapper *that,
                                                                                             struct wire_cst_list_prim_u_8_strict *block);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_owner(int64_t port_,
                                                                                      struct wire_cst_jetton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_preload_transactions(int64_t port_,
                                                                                                     struct wire_cst_jetton_wallet_dart_wrapper *that,
                                                                                                     struct wire_cst_list_prim_u_8_strict *from_lt);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_prepare_transfer(int64_t port_,
                                                                                                 struct wire_cst_jetton_wallet_dart_wrapper *that,
                                                                                                 struct wire_cst_list_prim_u_8_strict *amount,
                                                                                                 struct wire_cst_list_prim_u_8_strict *destination,
                                                                                                 struct wire_cst_list_prim_u_8_strict *remaining_gas_to,
                                                                                                 struct wire_cst_list_prim_u_8_strict *custom_payload,
                                                                                                 struct wire_cst_list_prim_u_8_strict *callback_value,
                                                                                                 struct wire_cst_list_prim_u_8_strict *callback_payload,
                                                                                                 struct wire_cst_list_prim_u_8_strict *attached_amount);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_refresh(int64_t port_,
                                                                                        struct wire_cst_jetton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_subscribe(int64_t port_,
                                                                                          struct wire_cst_list_prim_u_8_strict *owner,
                                                                                          struct wire_cst_list_prim_u_8_strict *root_token_contract,
                                                                                          uintptr_t transport,
                                                                                          bool preload_transactions,
                                                                                          const void *on_balance_changed,
                                                                                          const void *on_transactions_found);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_connection_dart_wrapper_new(const void *on_post);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_accounts_by_code_hash(int64_t port_,
                                                                                                   struct wire_cst_jrpc_transport_impl *that,
                                                                                                   struct wire_cst_list_prim_u_8_strict *code_hash,
                                                                                                   uint8_t limit,
                                                                                                   struct wire_cst_list_prim_u_8_strict *continuation);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_blockchain_config(int64_t port_,
                                                                                               struct wire_cst_jrpc_transport_impl *that,
                                                                                               bool force);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_contract_state(int64_t port_,
                                                                                            struct wire_cst_jrpc_transport_impl *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_dst_transaction(int64_t port_,
                                                                                             struct wire_cst_jrpc_transport_impl *that,
                                                                                             struct wire_cst_list_prim_u_8_strict *message_hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_fee_factors(int64_t port_,
                                                                                         struct wire_cst_jrpc_transport_impl *that,
                                                                                         bool is_masterchain);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_full_contract_state(int64_t port_,
                                                                                                 struct wire_cst_jrpc_transport_impl *that,
                                                                                                 struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_network_id(int64_t port_,
                                                                                        struct wire_cst_jrpc_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_signature_id(int64_t port_,
                                                                                          struct wire_cst_jrpc_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_transaction(int64_t port_,
                                                                                         struct wire_cst_jrpc_transport_impl *that,
                                                                                         struct wire_cst_list_prim_u_8_strict *hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_transactions(int64_t port_,
                                                                                          struct wire_cst_jrpc_transport_impl *that,
                                                                                          struct wire_cst_list_prim_u_8_strict *address,
                                                                                          struct wire_cst_list_prim_u_8_strict *from_lt,
                                                                                          uint8_t count);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_new(struct wire_cst_jrpc_connection_dart_wrapper *jrpc_connection);

void frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_simulate_transaction_tree(int64_t port_,
                                                                                                   struct wire_cst_jrpc_transport_impl *that,
                                                                                                   struct wire_cst_list_prim_u_8_strict *signed_message,
                                                                                                   struct wire_cst_list_prim_i_32_loose *ignored_compute_phase_codes,
                                                                                                   struct wire_cst_list_prim_i_32_loose *ignored_action_phase_codes);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_add_key(int64_t port_,
                                                                                   struct wire_cst_keystore_dart_wrapper *that,
                                                                                   struct wire_cst_key_signer *signer,
                                                                                   struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_add_keys(int64_t port_,
                                                                                    struct wire_cst_keystore_dart_wrapper *that,
                                                                                    struct wire_cst_key_signer *signer,
                                                                                    struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_clear_keystore(int64_t port_,
                                                                                          struct wire_cst_keystore_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_decrypt(int64_t port_,
                                                                                   struct wire_cst_keystore_dart_wrapper *that,
                                                                                   struct wire_cst_key_signer *signer,
                                                                                   struct wire_cst_list_prim_u_8_strict *data,
                                                                                   struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_encrypt(int64_t port_,
                                                                                   struct wire_cst_keystore_dart_wrapper *that,
                                                                                   struct wire_cst_key_signer *signer,
                                                                                   struct wire_cst_list_prim_u_8_strict *data,
                                                                                   struct wire_cst_list_String *public_keys,
                                                                                   struct wire_cst_list_prim_u_8_strict *algorithm,
                                                                                   struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_export_seed(int64_t port_,
                                                                                       struct wire_cst_keystore_dart_wrapper *that,
                                                                                       struct wire_cst_key_signer *signer,
                                                                                       struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_get_entries(int64_t port_,
                                                                                       struct wire_cst_keystore_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_get_public_keys(int64_t port_,
                                                                                           struct wire_cst_keystore_dart_wrapper *that,
                                                                                           struct wire_cst_key_signer *signer,
                                                                                           struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_is_password_cached(int64_t port_,
                                                                                              struct wire_cst_keystore_dart_wrapper *that,
                                                                                              struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                              uint64_t duration);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_new(int64_t port_,
                                                                               struct wire_cst_storage_dart_wrapper *storage,
                                                                               struct wire_cst_list_key_signer *signers,
                                                                               struct wire_cst_ledger_connection_dart_wrapper *ledger_connection);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_reload_keystore(int64_t port_,
                                                                                           struct wire_cst_keystore_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_remove_key(int64_t port_,
                                                                                      struct wire_cst_keystore_dart_wrapper *that,
                                                                                      struct wire_cst_list_prim_u_8_strict *public_key);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_remove_keys(int64_t port_,
                                                                                       struct wire_cst_keystore_dart_wrapper *that,
                                                                                       struct wire_cst_list_String *public_keys);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign(int64_t port_,
                                                                                struct wire_cst_keystore_dart_wrapper *that,
                                                                                struct wire_cst_key_signer *signer,
                                                                                struct wire_cst_unsigned_message_impl *message,
                                                                                struct wire_cst_list_prim_u_8_strict *input,
                                                                                int32_t *signature_id);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign_data(int64_t port_,
                                                                                     struct wire_cst_keystore_dart_wrapper *that,
                                                                                     struct wire_cst_key_signer *signer,
                                                                                     struct wire_cst_list_prim_u_8_strict *data,
                                                                                     struct wire_cst_list_prim_u_8_strict *input,
                                                                                     int32_t *signature_id);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign_data_raw(int64_t port_,
                                                                                         struct wire_cst_keystore_dart_wrapper *that,
                                                                                         struct wire_cst_key_signer *signer,
                                                                                         struct wire_cst_list_prim_u_8_strict *data,
                                                                                         struct wire_cst_list_prim_u_8_strict *input,
                                                                                         int32_t *signature_id);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_update_key(int64_t port_,
                                                                                      struct wire_cst_keystore_dart_wrapper *that,
                                                                                      struct wire_cst_key_signer *signer,
                                                                                      struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_verify_data(int64_t port_,
                                                                                       struct wire_cst_list_key_signer *signers,
                                                                                       struct wire_cst_ledger_connection_dart_wrapper *ledger_connection,
                                                                                       struct wire_cst_list_prim_u_8_strict *data);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__ledger_connection_dart_wrapper_new(const void *on_get_public_key,
                                                                                                        const void *on_sign,
                                                                                                        const void *on_sign_transaction);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_check_public_key(struct wire_cst_list_prim_u_8_strict *public_key);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_code_to_tvc(struct wire_cst_list_prim_u_8_strict *code);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_compute_storage_fee(int64_t port_,
                                                                            struct wire_cst_list_prim_u_8_strict *config,
                                                                            struct wire_cst_list_prim_u_8_strict *account,
                                                                            uint32_t utime,
                                                                            bool is_masterchain);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_compute_ton_wallet_address(struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                                   struct wire_cst_list_prim_u_8_strict *wallet_type,
                                                                                                   int8_t workchain);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_external_message(int64_t port_,
                                                                                struct wire_cst_list_prim_u_8_strict *dst,
                                                                                struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                                struct wire_cst_list_prim_u_8_strict *method,
                                                                                struct wire_cst_list_prim_u_8_strict *state_init,
                                                                                struct wire_cst_list_prim_u_8_strict *input,
                                                                                struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                uint32_t timeout);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_external_message_without_signature(int64_t port_,
                                                                                                  struct wire_cst_list_prim_u_8_strict *dst,
                                                                                                  struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                                                  struct wire_cst_list_prim_u_8_strict *method,
                                                                                                  struct wire_cst_list_prim_u_8_strict *state_init,
                                                                                                  struct wire_cst_list_prim_u_8_strict *input,
                                                                                                  uint32_t timeout);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_raw_external_message(int64_t port_,
                                                                                    struct wire_cst_list_prim_u_8_strict *dst,
                                                                                    struct wire_cst_list_prim_u_8_strict *state_init,
                                                                                    struct wire_cst_list_prim_u_8_strict *body,
                                                                                    uint32_t timeout);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_event(int64_t port_,
                                                                     struct wire_cst_list_prim_u_8_strict *message_body,
                                                                     struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                     struct wire_cst_list_prim_u_8_strict *event);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_input(int64_t port_,
                                                                     struct wire_cst_list_prim_u_8_strict *message_body,
                                                                     struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                     struct wire_cst_list_prim_u_8_strict *method,
                                                                     bool internal);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_output(int64_t port_,
                                                                      struct wire_cst_list_prim_u_8_strict *message_body,
                                                                      struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                      struct wire_cst_list_prim_u_8_strict *method);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_transaction(int64_t port_,
                                                                           struct wire_cst_list_prim_u_8_strict *transaction,
                                                                           struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                           struct wire_cst_list_prim_u_8_strict *method);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_transaction_events(int64_t port_,
                                                                                  struct wire_cst_list_prim_u_8_strict *transaction,
                                                                                  struct wire_cst_list_prim_u_8_strict *contract_abi);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_derive_from_phrase(struct wire_cst_list_prim_u_8_strict *phrase,
                                                                                           struct wire_cst_mnemonic_type *mnemonic_type);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_comment(struct wire_cst_list_prim_u_8_strict *comment,
                                                                                       bool plain);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_internal_input(int64_t port_,
                                                                              struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                              struct wire_cst_list_prim_u_8_strict *method,
                                                                              struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_internal_message(int64_t port_,
                                                                                struct wire_cst_list_prim_u_8_strict *src,
                                                                                struct wire_cst_list_prim_u_8_strict *dst,
                                                                                bool bounce,
                                                                                struct wire_cst_list_prim_u_8_strict *state_init,
                                                                                struct wire_cst_list_prim_u_8_strict *body,
                                                                                struct wire_cst_list_prim_u_8_strict *amount,
                                                                                bool *bounced);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_execute_local(int64_t port_,
                                                                      struct wire_cst_list_prim_u_8_strict *config,
                                                                      struct wire_cst_list_prim_u_8_strict *account,
                                                                      struct wire_cst_list_prim_u_8_strict *message,
                                                                      uint32_t utime,
                                                                      bool disable_signature_check,
                                                                      struct wire_cst_list_prim_u_8_strict *overwrite_balance,
                                                                      int32_t *global_id);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_extract_public_key(struct wire_cst_list_prim_u_8_strict *boc);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_generate_key(struct wire_cst_mnemonic_type *account_type);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_boc_hash(struct wire_cst_list_prim_u_8_strict *boc);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_code_salt(struct wire_cst_list_prim_u_8_strict *code);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_contract_type_number(struct wire_cst_list_prim_u_8_strict *wallet_type);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_expected_address(int64_t port_,
                                                                             struct wire_cst_list_prim_u_8_strict *tvc,
                                                                             struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                             int8_t workchain_id,
                                                                             struct wire_cst_list_prim_u_8_strict *public_key,
                                                                             struct wire_cst_list_prim_u_8_strict *init_data);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_hints(struct wire_cst_list_prim_u_8_strict *input);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_make_full_account_boc(int64_t port_,
                                                                              struct wire_cst_list_prim_u_8_strict *account_stuff_boc);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_merge_tvc(struct wire_cst_list_prim_u_8_strict *code,
                                                                                  struct wire_cst_list_prim_u_8_strict *data);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_address(struct wire_cst_list_prim_u_8_strict *address,
                                                                                     bool is_url_safe,
                                                                                     bool bounceable);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_into_cell(struct wire_cst_list_prim_u_8_strict *params,
                                                                                       struct wire_cst_list_prim_u_8_strict *tokens,
                                                                                       struct wire_cst_list_prim_u_8_strict *version);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_std_smc_addr(struct wire_cst_list_prim_u_8_strict *addr,
                                                                                          bool base64_url,
                                                                                          bool bounceable);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_parse_full_account_boc(int64_t port_,
                                                                               struct wire_cst_list_prim_u_8_strict *account);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_parse_known_payload(struct wire_cst_list_prim_u_8_strict *payload);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_repack_address(struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_run_getter(int64_t port_,
                                                                   struct wire_cst_list_prim_u_8_strict *account_stuff_boc,
                                                                   struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                   struct wire_cst_list_prim_u_8_strict *method_id,
                                                                   struct wire_cst_list_prim_u_8_strict *input,
                                                                   int32_t *signature_id);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_run_local(int64_t port_,
                                                                  struct wire_cst_list_prim_u_8_strict *account_stuff_boc,
                                                                  struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                  struct wire_cst_list_prim_u_8_strict *method_id,
                                                                  struct wire_cst_list_prim_u_8_strict *input,
                                                                  bool responsible,
                                                                  int32_t *signature_id);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_set_code_salt(struct wire_cst_list_prim_u_8_strict *code,
                                                                                      struct wire_cst_list_prim_u_8_strict *salt);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_split_tvc(struct wire_cst_list_prim_u_8_strict *tvc);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_contract_fields(int64_t port_,
                                                                               struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                               struct wire_cst_list_prim_u_8_strict *boc,
                                                                               bool allow_partial);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_from_cell(struct wire_cst_list_prim_u_8_strict *params,
                                                                                         struct wire_cst_list_prim_u_8_strict *boc,
                                                                                         bool allow_partial,
                                                                                         struct wire_cst_list_prim_u_8_strict *version);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_init_data(int64_t port_,
                                                                         struct wire_cst_list_prim_u_8_strict *contract_abi,
                                                                         struct wire_cst_list_prim_u_8_strict *data);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_std_smc_addr(struct wire_cst_list_prim_u_8_strict *packed,
                                                                                            bool base64_url);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__nt_validate_address(struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__nt_verify_signature(int64_t port_,
                                                                         struct wire_cst_list_prim_u_8_strict *public_key,
                                                                         struct wire_cst_list_prim_u_8_strict *data,
                                                                         struct wire_cst_list_prim_u_8_strict *signature,
                                                                         int32_t *signature_id);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__proto_connection_dart_wrapper_new(const void *on_post);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_accounts_by_code_hash(int64_t port_,
                                                                                                    struct wire_cst_proto_transport_impl *that,
                                                                                                    struct wire_cst_list_prim_u_8_strict *code_hash,
                                                                                                    uint8_t limit,
                                                                                                    struct wire_cst_list_prim_u_8_strict *continuation);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_blockchain_config(int64_t port_,
                                                                                                struct wire_cst_proto_transport_impl *that,
                                                                                                bool force);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_contract_state(int64_t port_,
                                                                                             struct wire_cst_proto_transport_impl *that,
                                                                                             struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_dst_transaction(int64_t port_,
                                                                                              struct wire_cst_proto_transport_impl *that,
                                                                                              struct wire_cst_list_prim_u_8_strict *message_hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_fee_factors(int64_t port_,
                                                                                          struct wire_cst_proto_transport_impl *that,
                                                                                          bool is_masterchain);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_full_contract_state(int64_t port_,
                                                                                                  struct wire_cst_proto_transport_impl *that,
                                                                                                  struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_network_id(int64_t port_,
                                                                                         struct wire_cst_proto_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_signature_id(int64_t port_,
                                                                                           struct wire_cst_proto_transport_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_transaction(int64_t port_,
                                                                                          struct wire_cst_proto_transport_impl *that,
                                                                                          struct wire_cst_list_prim_u_8_strict *hash);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_transactions(int64_t port_,
                                                                                           struct wire_cst_proto_transport_impl *that,
                                                                                           struct wire_cst_list_prim_u_8_strict *address,
                                                                                           struct wire_cst_list_prim_u_8_strict *from_lt,
                                                                                           uint8_t count);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_new(struct wire_cst_proto_connection_dart_wrapper *proto_connection);

void frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_simulate_transaction_tree(int64_t port_,
                                                                                                    struct wire_cst_proto_transport_impl *that,
                                                                                                    struct wire_cst_list_prim_u_8_strict *signed_message,
                                                                                                    struct wire_cst_list_prim_i_32_loose *ignored_compute_phase_codes,
                                                                                                    struct wire_cst_list_prim_i_32_loose *ignored_action_phase_codes);

void frbgen_nekoton_bridge_wire__crate__api__merged__set_clock_offset(int64_t port_,
                                                                      int64_t offset_ms);

WireSyncRust2DartDco frbgen_nekoton_bridge_wire__crate__api__merged__storage_dart_wrapper_new(const void *on_get,
                                                                                              const void *on_set,
                                                                                              const void *on_set_unchecked,
                                                                                              const void *on_remove,
                                                                                              const void *on_remove_unchecked);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_address(int64_t port_,
                                                                                       struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_balance(int64_t port_,
                                                                                       struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_contract_state(int64_t port_,
                                                                                              struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_estimate_min_attached_amount(int64_t port_,
                                                                                                            struct wire_cst_token_wallet_dart_wrapper *that,
                                                                                                            struct wire_cst_list_prim_u_8_strict *destination,
                                                                                                            struct wire_cst_list_prim_u_8_strict *amount,
                                                                                                            bool notify_receiver,
                                                                                                            struct wire_cst_list_prim_u_8_strict *payload);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_root_details(int64_t port_,
                                                                                                      uintptr_t transport,
                                                                                                      struct wire_cst_list_prim_u_8_strict *token_root_address);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_root_details_from_token_wallet(int64_t port_,
                                                                                                                        uintptr_t transport,
                                                                                                                        struct wire_cst_list_prim_u_8_strict *token_wallet_address);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_wallet_details(int64_t port_,
                                                                                                        uintptr_t transport,
                                                                                                        struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_handle_block(int64_t port_,
                                                                                            struct wire_cst_token_wallet_dart_wrapper *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *block);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_owner(int64_t port_,
                                                                                     struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_preload_transactions(int64_t port_,
                                                                                                    struct wire_cst_token_wallet_dart_wrapper *that,
                                                                                                    struct wire_cst_list_prim_u_8_strict *from_lt);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_prepare_transfer(int64_t port_,
                                                                                                struct wire_cst_token_wallet_dart_wrapper *that,
                                                                                                struct wire_cst_list_prim_u_8_strict *destination,
                                                                                                struct wire_cst_list_prim_u_8_strict *amount,
                                                                                                bool notify_receiver,
                                                                                                struct wire_cst_list_prim_u_8_strict *attached_amount,
                                                                                                struct wire_cst_list_prim_u_8_strict *payload);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_refresh(int64_t port_,
                                                                                       struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_subscribe(int64_t port_,
                                                                                         struct wire_cst_list_prim_u_8_strict *owner,
                                                                                         struct wire_cst_list_prim_u_8_strict *root_token_contract,
                                                                                         uintptr_t transport,
                                                                                         bool preload_transactions,
                                                                                         const void *on_balance_changed,
                                                                                         const void *on_transactions_found);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_symbol(int64_t port_,
                                                                                      struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_version(int64_t port_,
                                                                                       struct wire_cst_token_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_address(int64_t port_,
                                                                                     struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_contract_state(int64_t port_,
                                                                                            struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_custodians(int64_t port_,
                                                                                        struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_details(int64_t port_,
                                                                                     struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_estimate_fees(int64_t port_,
                                                                                           struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                           struct wire_cst_list_prim_u_8_strict *signed_message,
                                                                                           struct wire_cst_list_prim_u_8_strict *execution_options);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_find_existing_wallets(int64_t port_,
                                                                                                   uintptr_t transport,
                                                                                                   struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                                   int8_t workchain_id,
                                                                                                   struct wire_cst_list_prim_u_8_strict *wallet_types);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_get_custodians(int64_t port_,
                                                                                            uintptr_t transport,
                                                                                            struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_get_existing_wallet_info(int64_t port_,
                                                                                                      uintptr_t transport,
                                                                                                      struct wire_cst_list_prim_u_8_strict *address);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_handle_block(int64_t port_,
                                                                                          struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                          struct wire_cst_list_prim_u_8_strict *block);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_make_state_init(int64_t port_,
                                                                                             struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_pending_transactions(int64_t port_,
                                                                                                  struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_polling_method(int64_t port_,
                                                                                            struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_preload_transactions(int64_t port_,
                                                                                                  struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                                  struct wire_cst_list_prim_u_8_strict *from_lt);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_confirm_transaction(int64_t port_,
                                                                                                         struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                                         struct wire_cst_list_prim_u_8_strict *contract_state,
                                                                                                         struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                                         struct wire_cst_list_prim_u_8_strict *transaction_id,
                                                                                                         struct wire_cst_list_prim_u_8_strict *expiration);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_deploy(int64_t port_,
                                                                                            struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                            struct wire_cst_list_prim_u_8_strict *expiration);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_deploy_with_multiple_owners(int64_t port_,
                                                                                                                 struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                                                 struct wire_cst_list_prim_u_8_strict *expiration,
                                                                                                                 struct wire_cst_list_String *custodians,
                                                                                                                 uint8_t req_confirms,
                                                                                                                 uint32_t *expiration_time);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_transfer(int64_t port_,
                                                                                              struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                              struct wire_cst_list_prim_u_8_strict *contract_state,
                                                                                              struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                              struct wire_cst_list_prim_u_8_strict *expiration,
                                                                                              struct wire_cst_list_prim_u_8_strict *params);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_public_key(int64_t port_,
                                                                                        struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_refresh(int64_t port_,
                                                                                     struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_send(int64_t port_,
                                                                                  struct wire_cst_ton_wallet_dart_wrapper *that,
                                                                                  struct wire_cst_list_prim_u_8_strict *signed_message);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe(int64_t port_,
                                                                                       int8_t workchain_id,
                                                                                       struct wire_cst_list_prim_u_8_strict *public_key,
                                                                                       struct wire_cst_list_prim_u_8_strict *wallet_type,
                                                                                       uintptr_t transport,
                                                                                       const void *on_message_sent,
                                                                                       const void *on_message_expired,
                                                                                       const void *on_state_changed,
                                                                                       const void *on_transactions_found,
                                                                                       const void *on_details_changed,
                                                                                       const void *on_custodians_changed,
                                                                                       const void *on_unconfirmed_transactions_changed);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe_by_address(int64_t port_,
                                                                                                  struct wire_cst_list_prim_u_8_strict *address,
                                                                                                  uintptr_t transport,
                                                                                                  const void *on_message_sent,
                                                                                                  const void *on_message_expired,
                                                                                                  const void *on_state_changed,
                                                                                                  const void *on_transactions_found,
                                                                                                  const void *on_details_changed,
                                                                                                  const void *on_custodians_changed,
                                                                                                  const void *on_unconfirmed_transactions_changed);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe_by_existing(int64_t port_,
                                                                                                   struct wire_cst_list_prim_u_8_strict *existing_wallet,
                                                                                                   uintptr_t transport,
                                                                                                   const void *on_message_sent,
                                                                                                   const void *on_message_expired,
                                                                                                   const void *on_state_changed,
                                                                                                   const void *on_transactions_found,
                                                                                                   const void *on_details_changed,
                                                                                                   const void *on_custodians_changed,
                                                                                                   const void *on_unconfirmed_transactions_changed);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_unconfirmed_transactions(int64_t port_,
                                                                                                      struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_wallet_type(int64_t port_,
                                                                                         struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_workchain(int64_t port_,
                                                                                       struct wire_cst_ton_wallet_dart_wrapper *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_expire_at(int64_t port_,
                                                                                     struct wire_cst_unsigned_message_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_hash(int64_t port_,
                                                                                struct wire_cst_unsigned_message_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_refresh_timeout(int64_t port_,
                                                                                           struct wire_cst_unsigned_message_impl *that);

void frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_sign(int64_t port_,
                                                                                struct wire_cst_unsigned_message_impl *that,
                                                                                struct wire_cst_list_prim_u_8_strict *signature);

void frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_sign_fake(int64_t port_,
                                                                                     struct wire_cst_unsigned_message_impl *that);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynAccountsStorageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynAccountsStorageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynGenericContractBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynGenericContractBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynGqlConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynGqlConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynJettonWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynJettonWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynJrpcConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynJrpcConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynKeyStoreApiBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynKeyStoreApiBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynLedgerConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynLedgerConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynProtoConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynProtoConnectionBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynStorageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynStorageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTokenWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTokenWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTonWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTonWalletBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTransportBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTransportBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynUnsignedMessageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynUnsignedMessageBoxTrait(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureOptionStringSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureOptionStringSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureStringSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureStringSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringStringDartFnFutureSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringStringDartFnFutureSendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnVecu8DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnVecu8DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16Optioni32Vecu8DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16Optioni32Vecu8DartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16u16Optioni32Vecu8StringDartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16u16Optioni32Vecu8StringDartFnFutureVecu8SendSync(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGenericContractSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGenericContractSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGqlConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGqlConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJettonWalletSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJettonWalletSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJrpcConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJrpcConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLedgerConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLedgerConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerProtoConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerProtoConnectionImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerStorageImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerStorageImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTokenWalletSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTokenWalletSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTonWalletSubscriptionHandlerImpl(const void *ptr);

void frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTonWalletSubscriptionHandlerImpl(const void *ptr);

struct wire_cst_accounts_storage_impl *frbgen_nekoton_bridge_cst_new_box_autoadd_accounts_storage_impl(void);

struct wire_cst_bip_39_mnemonic_data *frbgen_nekoton_bridge_cst_new_box_autoadd_bip_39_mnemonic_data(void);

bool *frbgen_nekoton_bridge_cst_new_box_autoadd_bool(bool value);

struct wire_cst_generic_contract_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_generic_contract_dart_wrapper(void);

struct wire_cst_gql_connection_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_gql_connection_dart_wrapper(void);

struct wire_cst_gql_transport_impl *frbgen_nekoton_bridge_cst_new_box_autoadd_gql_transport_impl(void);

int32_t *frbgen_nekoton_bridge_cst_new_box_autoadd_i_32(int32_t value);

struct wire_cst_jetton_wallet_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_jetton_wallet_dart_wrapper(void);

struct wire_cst_jrpc_connection_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_jrpc_connection_dart_wrapper(void);

struct wire_cst_jrpc_transport_impl *frbgen_nekoton_bridge_cst_new_box_autoadd_jrpc_transport_impl(void);

struct wire_cst_key_signer *frbgen_nekoton_bridge_cst_new_box_autoadd_key_signer(void);

struct wire_cst_keystore_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_keystore_dart_wrapper(void);

struct wire_cst_ledger_connection_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_ledger_connection_dart_wrapper(void);

struct wire_cst_mnemonic_type *frbgen_nekoton_bridge_cst_new_box_autoadd_mnemonic_type(void);

struct wire_cst_proto_connection_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_proto_connection_dart_wrapper(void);

struct wire_cst_proto_transport_impl *frbgen_nekoton_bridge_cst_new_box_autoadd_proto_transport_impl(void);

struct wire_cst_storage_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_storage_dart_wrapper(void);

struct wire_cst_token_wallet_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_token_wallet_dart_wrapper(void);

struct wire_cst_ton_wallet_dart_wrapper *frbgen_nekoton_bridge_cst_new_box_autoadd_ton_wallet_dart_wrapper(void);

uint32_t *frbgen_nekoton_bridge_cst_new_box_autoadd_u_32(uint32_t value);

struct wire_cst_unsigned_message_impl *frbgen_nekoton_bridge_cst_new_box_autoadd_unsigned_message_impl(void);

struct wire_cst_list_String *frbgen_nekoton_bridge_cst_new_list_String(int32_t len);

struct wire_cst_list_key_signer *frbgen_nekoton_bridge_cst_new_list_key_signer(int32_t len);

struct wire_cst_list_opt_String *frbgen_nekoton_bridge_cst_new_list_opt_String(int32_t len);

struct wire_cst_list_prim_i_32_loose *frbgen_nekoton_bridge_cst_new_list_prim_i_32_loose(int32_t len);

struct wire_cst_list_prim_i_32_strict *frbgen_nekoton_bridge_cst_new_list_prim_i_32_strict(int32_t len);

struct wire_cst_list_prim_u_8_strict *frbgen_nekoton_bridge_cst_new_list_prim_u_8_strict(int32_t len);
static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_accounts_storage_impl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_bip_39_mnemonic_data);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_bool);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_generic_contract_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_gql_connection_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_gql_transport_impl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_i_32);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_jetton_wallet_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_jrpc_connection_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_jrpc_transport_impl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_key_signer);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_keystore_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_ledger_connection_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_mnemonic_type);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_proto_connection_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_proto_transport_impl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_storage_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_token_wallet_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_ton_wallet_dart_wrapper);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_u_32);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_box_autoadd_unsigned_message_impl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_String);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_key_signer);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_opt_String);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_prim_i_32_loose);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_prim_i_32_strict);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_cst_new_list_prim_u_8_strict);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynAccountsStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynGenericContractBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynJettonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynKeyStoreApiBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynLedgerConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynProtoConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTokenWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_ArcdynUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureOptionStringSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureStringSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringStringDartFnFutureSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnVecu8DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16Optioni32Vecu8DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16u16Optioni32Vecu8StringDartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGenericContractSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGqlConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJettonWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJrpcConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLedgerConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerProtoConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerStorageImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTokenWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTonWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynAccountsStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynGenericContractBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynJettonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynKeyStoreApiBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynLedgerConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynProtoConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTokenWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_ArcdynUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureOptionStringSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringDartFnFutureStringSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnStringStringDartFnFutureSendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnVecu8DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16Optioni32Vecu8DartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcdynFnu16u16Optioni32Vecu8StringDartFnFutureVecu8SendSync);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGenericContractSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerGqlConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJettonWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerJrpcConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLedgerConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerProtoConnectionImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerStorageImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTokenWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTonWalletSubscriptionHandlerImpl);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_message_expired);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_message_sent);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_state_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_message_expired);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_message_sent);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_state_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GenericContractSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_get_is_local);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_get_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_set_is_local);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__GqlConnectionImpl_auto_accessor_set_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_get_on_balance_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_set_on_balance_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JettonWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JrpcConnectionImpl_auto_accessor_get_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__JrpcConnectionImpl_auto_accessor_set_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_get_public_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_sign);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_get_on_sign_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_get_public_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_sign);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__LedgerConnectionImpl_auto_accessor_set_on_sign_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ProtoConnectionImpl_auto_accessor_get_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ProtoConnectionImpl_auto_accessor_set_on_post);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_get);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_remove);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_remove_unchecked);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_set);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_get_on_set_unchecked);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_get);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_remove);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_remove_unchecked);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_set);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_auto_accessor_set_on_set_unchecked);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__StorageImpl_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_get_on_balance_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_set_on_balance_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TokenWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_custodians_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_details_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_message_expired);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_message_sent);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_state_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_get_on_unconfirmed_transactions_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_custodians_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_details_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_message_expired);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_message_sent);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_state_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_transactions_found);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__TonWalletSubscriptionHandlerImpl_auto_accessor_set_on_unconfirmed_transactions_changed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_account);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_accounts);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_token_wallet);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_add_token_wallets);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_clear);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_get_entries);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_reload);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_account);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_accounts);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_token_wallet);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_remove_token_wallets);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_rename_account);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__accounts_storage_impl_verify_data);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__create_log_stream);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_estimate_fees);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_execute_transaction_locally);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_handle_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_pending_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_polling_method);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_preload_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_refresh);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_send);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__generic_contract_dart_wrapper_subscribe);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_connection_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_accounts_by_code_hash);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_blockchain_config);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_dst_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_fee_factors);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_full_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_latest_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_network_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_signature_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_get_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_simulate_transaction_tree);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__gql_transport_impl_wait_for_next_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__init_logger);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_balance);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_estimate_min_attached_amount);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_root_details);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_root_details_from_jetton_wallet);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_get_jetton_wallet_details);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_handle_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_owner);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_preload_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_prepare_transfer);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_refresh);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jetton_wallet_dart_wrapper_subscribe);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_connection_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_accounts_by_code_hash);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_blockchain_config);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_dst_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_fee_factors);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_full_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_network_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_signature_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_get_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__jrpc_transport_impl_simulate_transaction_tree);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_add_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_add_keys);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_clear_keystore);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_decrypt);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_encrypt);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_export_seed);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_get_entries);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_get_public_keys);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_is_password_cached);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_reload_keystore);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_remove_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_remove_keys);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign_data);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_sign_data_raw);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_update_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__keystore_dart_wrapper_verify_data);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ledger_connection_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_check_public_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_code_to_tvc);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_compute_storage_fee);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_compute_ton_wallet_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_external_message);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_external_message_without_signature);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_create_raw_external_message);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_event);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_input);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_output);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_decode_transaction_events);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_derive_from_phrase);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_comment);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_internal_input);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_encode_internal_message);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_execute_local);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_extract_public_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_generate_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_boc_hash);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_code_salt);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_contract_type_number);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_expected_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_get_hints);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_make_full_account_boc);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_merge_tvc);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_into_cell);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_pack_std_smc_addr);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_parse_full_account_boc);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_parse_known_payload);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_repack_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_run_getter);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_run_local);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_set_code_salt);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_split_tvc);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_contract_fields);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_from_cell);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_init_data);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_unpack_std_smc_addr);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_validate_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__nt_verify_signature);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_connection_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_accounts_by_code_hash);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_blockchain_config);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_dst_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_fee_factors);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_full_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_network_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_signature_id);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_get_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__proto_transport_impl_simulate_transaction_tree);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__set_clock_offset);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__storage_dart_wrapper_new);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_balance);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_estimate_min_attached_amount);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_root_details);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_root_details_from_token_wallet);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_get_token_wallet_details);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_handle_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_owner);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_preload_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_prepare_transfer);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_refresh);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_subscribe);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_symbol);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__token_wallet_dart_wrapper_version);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_contract_state);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_custodians);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_details);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_estimate_fees);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_find_existing_wallets);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_get_custodians);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_get_existing_wallet_info);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_handle_block);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_make_state_init);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_pending_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_polling_method);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_preload_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_confirm_transaction);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_deploy);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_deploy_with_multiple_owners);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_prepare_transfer);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_public_key);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_refresh);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_send);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe_by_address);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_subscribe_by_existing);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_unconfirmed_transactions);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_wallet_type);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__ton_wallet_dart_wrapper_workchain);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_expire_at);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_hash);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_refresh_timeout);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_sign);
    dummy_var ^= ((int64_t) (void*) frbgen_nekoton_bridge_wire__crate__api__merged__unsigned_message_impl_sign_fake);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}
