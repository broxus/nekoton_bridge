#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_MnemonicType_Legacy {

} wire_MnemonicType_Legacy;

typedef struct wire_MnemonicType_Labs {
  uint16_t field0;
} wire_MnemonicType_Labs;

typedef union MnemonicTypeKind {
  struct wire_MnemonicType_Legacy *Legacy;
  struct wire_MnemonicType_Labs *Labs;
} MnemonicTypeKind;

typedef struct wire_MnemonicType {
  int32_t tag;
  union MnemonicTypeKind *kind;
} wire_MnemonicType;

typedef struct DartCObject *WireSyncReturn;

typedef struct wire_DynamicValue_U16 {
  uint16_t field0;
} wire_DynamicValue_U16;

typedef struct wire_DynamicValue_U32 {
  uint32_t field0;
} wire_DynamicValue_U32;

typedef struct wire_DynamicValue_I32 {
  int32_t field0;
} wire_DynamicValue_I32;

typedef struct wire_DynamicValue_U64 {
  uint64_t field0;
} wire_DynamicValue_U64;

typedef struct wire_DynamicValue_I64 {
  int64_t field0;
} wire_DynamicValue_I64;

typedef struct wire_DynamicValue_F32 {
  float field0;
} wire_DynamicValue_F32;

typedef struct wire_DynamicValue_F64 {
  double field0;
} wire_DynamicValue_F64;

typedef struct wire_DynamicValue_String {
  struct wire_uint_8_list *field0;
} wire_DynamicValue_String;

typedef struct wire_DynamicValue_MegaStruct {
  struct wire_uint_8_list *field0;
} wire_DynamicValue_MegaStruct;

typedef struct wire_DynamicValue_Error {
  int32_t field0;
} wire_DynamicValue_Error;

typedef struct wire_DynamicValue_None {

} wire_DynamicValue_None;

typedef union DynamicValueKind {
  struct wire_DynamicValue_U16 *U16;
  struct wire_DynamicValue_U32 *U32;
  struct wire_DynamicValue_I32 *I32;
  struct wire_DynamicValue_U64 *U64;
  struct wire_DynamicValue_I64 *I64;
  struct wire_DynamicValue_F32 *F32;
  struct wire_DynamicValue_F64 *F64;
  struct wire_DynamicValue_String *String;
  struct wire_DynamicValue_MegaStruct *MegaStruct;
  struct wire_DynamicValue_Error *Error;
  struct wire_DynamicValue_None *None;
} DynamicValueKind;

typedef struct wire_DynamicValue {
  int32_t tag;
  union DynamicValueKind *kind;
} wire_DynamicValue;

typedef struct wire_list_dynamic_value {
  struct wire_DynamicValue *ptr;
  int32_t len;
} wire_list_dynamic_value;

typedef struct wire_DynamicNamedValue {
  struct wire_uint_8_list *name;
  struct wire_DynamicValue *value;
} wire_DynamicNamedValue;

typedef struct wire_list_dynamic_named_value {
  struct wire_DynamicNamedValue *ptr;
  int32_t len;
} wire_list_dynamic_named_value;

typedef struct wire_DartCallStub {
  struct wire_uint_8_list *instance_hash;
  struct wire_uint_8_list *fn_name;
  struct wire_list_dynamic_value *args;
  struct wire_list_dynamic_named_value *named_args;
} wire_DartCallStub;

typedef struct wire_ArcUnsignedMessageBoxTrait {
  const void *ptr;
} wire_ArcUnsignedMessageBoxTrait;

typedef struct wire_UnsignedMessageImpl {
  struct wire_ArcUnsignedMessageBoxTrait inner_message;
} wire_UnsignedMessageImpl;

typedef struct wire_ArcGqlConnectionBoxTrait {
  const void *ptr;
} wire_ArcGqlConnectionBoxTrait;

typedef struct wire_GqlConnectionDartWrapper {
  struct wire_ArcGqlConnectionBoxTrait inner_connection;
} wire_GqlConnectionDartWrapper;

typedef struct wire_ArcTransportBoxTrait {
  const void *ptr;
} wire_ArcTransportBoxTrait;

typedef struct wire_GqlTransportImpl {
  struct wire_ArcTransportBoxTrait inner_transport;
} wire_GqlTransportImpl;

typedef struct wire_ArcJrpcConnectionBoxTrait {
  const void *ptr;
} wire_ArcJrpcConnectionBoxTrait;

typedef struct wire_JrpcConnectionDartWrapper {
  struct wire_ArcJrpcConnectionBoxTrait inner_connection;
} wire_JrpcConnectionDartWrapper;

typedef struct wire_JrpcTransportImpl {
  struct wire_ArcTransportBoxTrait inner_transport;
} wire_JrpcTransportImpl;

typedef struct wire_ArcTokenWalletBoxTrait {
  const void *ptr;
} wire_ArcTokenWalletBoxTrait;

typedef struct wire_TokenWalletDartWrapper {
  struct wire_ArcTokenWalletBoxTrait inner_wallet;
} wire_TokenWalletDartWrapper;

typedef struct wire_ArcStorageBoxTrait {
  const void *ptr;
} wire_ArcStorageBoxTrait;

typedef struct wire_StorageDartWrapper {
  struct wire_ArcStorageBoxTrait inner_storage;
} wire_StorageDartWrapper;

typedef struct wire_KeySigner_Encrypted {

} wire_KeySigner_Encrypted;

typedef struct wire_KeySigner_Derived {

} wire_KeySigner_Derived;

typedef struct wire_KeySigner_Ledger {

} wire_KeySigner_Ledger;

typedef struct wire_KeySigner_Stub {
  bool field0;
} wire_KeySigner_Stub;

typedef union KeySignerKind {
  struct wire_KeySigner_Encrypted *Encrypted;
  struct wire_KeySigner_Derived *Derived;
  struct wire_KeySigner_Ledger *Ledger;
  struct wire_KeySigner_Stub *Stub;
} KeySignerKind;

typedef struct wire_KeySigner {
  int32_t tag;
  union KeySignerKind *kind;
} wire_KeySigner;

typedef struct wire_list_key_signer {
  struct wire_KeySigner *ptr;
  int32_t len;
} wire_list_key_signer;

typedef struct wire_ArcLedgerConnectionBoxTrait {
  const void *ptr;
} wire_ArcLedgerConnectionBoxTrait;

typedef struct wire_LedgerConnectionDartWrapper {
  struct wire_ArcLedgerConnectionBoxTrait inner_connection;
} wire_LedgerConnectionDartWrapper;

typedef struct wire_ArcKeyStoreApiBoxTrait {
  const void *ptr;
} wire_ArcKeyStoreApiBoxTrait;

typedef struct wire_KeystoreDartWrapper {
  struct wire_ArcKeyStoreApiBoxTrait inner_keystore;
} wire_KeystoreDartWrapper;

typedef struct wire_StringList {
  struct wire_uint_8_list **ptr;
  int32_t len;
} wire_StringList;

typedef struct wire_ArcAccountsStorageBoxTrait {
  const void *ptr;
} wire_ArcAccountsStorageBoxTrait;

typedef struct wire_AccountsStorageImpl {
  struct wire_ArcAccountsStorageBoxTrait inner_storage;
} wire_AccountsStorageImpl;

typedef struct wire_ArcGenericContractBoxTrait {
  const void *ptr;
} wire_ArcGenericContractBoxTrait;

typedef struct wire_GenericContractDartWrapper {
  struct wire_ArcGenericContractBoxTrait inner_contract;
} wire_GenericContractDartWrapper;

typedef struct wire_TransactionExecutionOptions {
  bool disable_signature_check;
  uint64_t *override_balance;
} wire_TransactionExecutionOptions;

typedef struct wire_ArcTonWalletBoxTrait {
  const void *ptr;
} wire_ArcTonWalletBoxTrait;

typedef struct wire_TonWalletDartWrapper {
  struct wire_ArcTonWalletBoxTrait inner_wallet;
} wire_TonWalletDartWrapper;

typedef struct wire_MyClass {
  int32_t val;
} wire_MyClass;

typedef struct wire_CallerTestClass {
  struct wire_uint_8_list *instance_hash;
  int32_t value;
} wire_CallerTestClass;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_verify_signature(int64_t port_,
                           struct wire_uint_8_list *public_key,
                           struct wire_uint_8_list *data_hash,
                           struct wire_uint_8_list *signature);

void wire_nt_generate_key(int64_t port_, struct wire_MnemonicType *account_type);

void wire_nt_get_hints(int64_t port_, struct wire_uint_8_list *input);

void wire_nt_derive_from_phrase(int64_t port_,
                                struct wire_uint_8_list *phrase,
                                struct wire_MnemonicType *mnemonic_type);

void wire_check_public_key(int64_t port_, struct wire_uint_8_list *public_key);

void wire_run_local(int64_t port_,
                    struct wire_uint_8_list *account_stuff_boc,
                    struct wire_uint_8_list *contract_abi,
                    struct wire_uint_8_list *method,
                    struct wire_uint_8_list *input,
                    bool responsible);

void wire_get_expected_address(int64_t port_,
                               struct wire_uint_8_list *tvc,
                               struct wire_uint_8_list *contract_abi,
                               int8_t workchain_id,
                               struct wire_uint_8_list *public_key,
                               struct wire_uint_8_list *init_data);

void wire_encode_internal_input(int64_t port_,
                                struct wire_uint_8_list *contract_abi,
                                struct wire_uint_8_list *method,
                                struct wire_uint_8_list *input);

void wire_create_external_message_without_signature(int64_t port_,
                                                    struct wire_uint_8_list *dst,
                                                    struct wire_uint_8_list *contract_abi,
                                                    struct wire_uint_8_list *method,
                                                    struct wire_uint_8_list *state_init,
                                                    struct wire_uint_8_list *input,
                                                    uint32_t timeout);

void wire_create_external_message(int64_t port_,
                                  struct wire_uint_8_list *dst,
                                  struct wire_uint_8_list *contract_abi,
                                  struct wire_uint_8_list *method,
                                  struct wire_uint_8_list *state_init,
                                  struct wire_uint_8_list *input,
                                  struct wire_uint_8_list *public_key,
                                  uint32_t timeout);

void wire_parse_known_payload(int64_t port_, struct wire_uint_8_list *payload);

void wire_decode_input(int64_t port_,
                       struct wire_uint_8_list *message_body,
                       struct wire_uint_8_list *contract_abi,
                       struct wire_uint_8_list *method,
                       bool internal);

void wire_decode_event(int64_t port_,
                       struct wire_uint_8_list *message_body,
                       struct wire_uint_8_list *contract_abi,
                       struct wire_uint_8_list *event);

void wire_decode_output(int64_t port_,
                        struct wire_uint_8_list *message_body,
                        struct wire_uint_8_list *contract_abi,
                        struct wire_uint_8_list *method);

void wire_decode_transaction(int64_t port_,
                             struct wire_uint_8_list *transaction,
                             struct wire_uint_8_list *contract_abi,
                             struct wire_uint_8_list *method);

void wire_decode_transaction_events(int64_t port_,
                                    struct wire_uint_8_list *transaction,
                                    struct wire_uint_8_list *contract_abi);

void wire_get_boc_hash(int64_t port_, struct wire_uint_8_list *boc);

void wire_pack_into_cell(int64_t port_,
                         struct wire_uint_8_list *params,
                         struct wire_uint_8_list *tokens);

void wire_unpack_from_cell(int64_t port_,
                           struct wire_uint_8_list *params,
                           struct wire_uint_8_list *boc,
                           bool allow_partial);

void wire_pack_std_smc_addr(int64_t port_,
                            struct wire_uint_8_list *addr,
                            bool base64_url,
                            bool bounceable);

void wire_unpack_std_smc_addr(int64_t port_, struct wire_uint_8_list *packed, bool base64_url);

void wire_validate_address(int64_t port_, struct wire_uint_8_list *address);

void wire_repack_address(int64_t port_, struct wire_uint_8_list *address);

void wire_extract_public_key(int64_t port_, struct wire_uint_8_list *boc);

void wire_code_to_tvc(int64_t port_, struct wire_uint_8_list *code);

void wire_merge_tvc(int64_t port_, struct wire_uint_8_list *code, struct wire_uint_8_list *data);

void wire_split_tvc(int64_t port_, struct wire_uint_8_list *tvc);

void wire_set_code_salt(int64_t port_,
                        struct wire_uint_8_list *code,
                        struct wire_uint_8_list *salt);

void wire_get_code_salt(int64_t port_, struct wire_uint_8_list *code);

void wire_test_logger_info(int64_t port_, struct wire_uint_8_list *string);

void wire_test_logger_debug(int64_t port_, struct wire_uint_8_list *string);

void wire_test_logger_warn(int64_t port_, struct wire_uint_8_list *string);

void wire_test_logger_error(int64_t port_, struct wire_uint_8_list *string);

void wire_test_logger_panic(int64_t port_, struct wire_uint_8_list *string);

void wire_test_caller_call_test0_async(int64_t port_,
                                       struct wire_uint_8_list *string,
                                       bool need_result);

WireSyncReturn wire_test_caller_call_test0_sync(struct wire_uint_8_list *string, bool need_result);

void wire_test_caller_call_test1_async(int64_t port_,
                                       struct wire_uint_8_list *string,
                                       bool need_result);

void wire_init_logger(int64_t port_, int32_t level, bool mobile_logger);

void wire_create_log_stream(int64_t port_);

void wire_init_caller(int64_t port_);

WireSyncReturn wire_call_send_result(struct wire_uint_8_list *id, struct wire_DynamicValue *value);

void wire_simple_log(int64_t port_, struct wire_uint_8_list *string);

void wire_simple_panic(int64_t port_);

WireSyncReturn wire_simple_adder_sync(int32_t a, int32_t b);

void wire_simple_adder(int64_t port_, int32_t a, int32_t b);

void wire_stub_dv(int64_t port_);

void wire_stub_dcs(int64_t port_);

void wire_simple_call_dart(int64_t port_);

void wire_stub_call_dart(int64_t port_, struct wire_DartCallStub *stub);

void wire_simple_call_func0(int64_t port_, bool need_result);

void wire_simple_call_func1(int64_t port_, bool need_result);

void wire_simple_call_func2(int64_t port_);

void wire_simple_call_func3(int64_t port_);

void wire_refresh_timeout__method__UnsignedMessageImpl(int64_t port_,
                                                       struct wire_UnsignedMessageImpl *that);

void wire_expire_at__method__UnsignedMessageImpl(int64_t port_,
                                                 struct wire_UnsignedMessageImpl *that);

void wire_hash__method__UnsignedMessageImpl(int64_t port_, struct wire_UnsignedMessageImpl *that);

void wire_sign__method__UnsignedMessageImpl(int64_t port_,
                                            struct wire_UnsignedMessageImpl *that,
                                            struct wire_uint_8_list *signature);

void wire_new__static_method__GqlTransportImpl(int64_t port_,
                                               struct wire_GqlConnectionDartWrapper *gql_connection);

void wire_get_contract_state__method__GqlTransportImpl(int64_t port_,
                                                       struct wire_GqlTransportImpl *that,
                                                       struct wire_uint_8_list *address);

void wire_get_full_contract_state__method__GqlTransportImpl(int64_t port_,
                                                            struct wire_GqlTransportImpl *that,
                                                            struct wire_uint_8_list *address);

void wire_get_accounts_by_code_hash__method__GqlTransportImpl(int64_t port_,
                                                              struct wire_GqlTransportImpl *that,
                                                              struct wire_uint_8_list *code_hash,
                                                              uint8_t limit,
                                                              struct wire_uint_8_list *continuation);

void wire_get_transactions__method__GqlTransportImpl(int64_t port_,
                                                     struct wire_GqlTransportImpl *that,
                                                     struct wire_uint_8_list *address,
                                                     uint64_t *from_lt,
                                                     uint8_t count);

void wire_get_transaction__method__GqlTransportImpl(int64_t port_,
                                                    struct wire_GqlTransportImpl *that,
                                                    struct wire_uint_8_list *hash);

void wire_get_signature_id__method__GqlTransportImpl(int64_t port_,
                                                     struct wire_GqlTransportImpl *that);

void wire_get_network_id__method__GqlTransportImpl(int64_t port_,
                                                   struct wire_GqlTransportImpl *that);

void wire_get_latest_block__method__GqlTransportImpl(int64_t port_,
                                                     struct wire_GqlTransportImpl *that,
                                                     struct wire_uint_8_list *address);

void wire_get_block__method__GqlTransportImpl(int64_t port_,
                                              struct wire_GqlTransportImpl *that,
                                              struct wire_uint_8_list *id);

void wire_wait_for_next_block__method__GqlTransportImpl(int64_t port_,
                                                        struct wire_GqlTransportImpl *that,
                                                        struct wire_uint_8_list *current_block_id,
                                                        struct wire_uint_8_list *address,
                                                        uint64_t timeout);

void wire_new__static_method__JrpcTransportImpl(int64_t port_,
                                                struct wire_JrpcConnectionDartWrapper *jrpc_connection);

void wire_get_contract_state__method__JrpcTransportImpl(int64_t port_,
                                                        struct wire_JrpcTransportImpl *that,
                                                        struct wire_uint_8_list *address);

void wire_get_full_contract_state__method__JrpcTransportImpl(int64_t port_,
                                                             struct wire_JrpcTransportImpl *that,
                                                             struct wire_uint_8_list *address);

void wire_get_accounts_by_code_hash__method__JrpcTransportImpl(int64_t port_,
                                                               struct wire_JrpcTransportImpl *that,
                                                               struct wire_uint_8_list *code_hash,
                                                               uint8_t limit,
                                                               struct wire_uint_8_list *continuation);

void wire_get_transactions__method__JrpcTransportImpl(int64_t port_,
                                                      struct wire_JrpcTransportImpl *that,
                                                      struct wire_uint_8_list *address,
                                                      uint64_t *from_lt,
                                                      uint8_t count);

void wire_get_transaction__method__JrpcTransportImpl(int64_t port_,
                                                     struct wire_JrpcTransportImpl *that,
                                                     struct wire_uint_8_list *hash);

void wire_get_signature_id__method__JrpcTransportImpl(int64_t port_,
                                                      struct wire_JrpcTransportImpl *that);

void wire_get_network_id__method__JrpcTransportImpl(int64_t port_,
                                                    struct wire_JrpcTransportImpl *that);

void wire_subscribe__static_method__TokenWalletDartWrapper(int64_t port_,
                                                           struct wire_uint_8_list *instance_hash,
                                                           struct wire_uint_8_list *owner,
                                                           struct wire_uint_8_list *root_token_contract,
                                                           struct wire_ArcTransportBoxTrait transport);

void wire_owner__method__TokenWalletDartWrapper(int64_t port_,
                                                struct wire_TokenWalletDartWrapper *that);

void wire_address__method__TokenWalletDartWrapper(int64_t port_,
                                                  struct wire_TokenWalletDartWrapper *that);

void wire_symbol__method__TokenWalletDartWrapper(int64_t port_,
                                                 struct wire_TokenWalletDartWrapper *that);

void wire_version__method__TokenWalletDartWrapper(int64_t port_,
                                                  struct wire_TokenWalletDartWrapper *that);

void wire_balance__method__TokenWalletDartWrapper(int64_t port_,
                                                  struct wire_TokenWalletDartWrapper *that);

void wire_contract_state__method__TokenWalletDartWrapper(int64_t port_,
                                                         struct wire_TokenWalletDartWrapper *that);

void wire_prepare_transfer__method__TokenWalletDartWrapper(int64_t port_,
                                                           struct wire_TokenWalletDartWrapper *that,
                                                           struct wire_uint_8_list *destination,
                                                           struct wire_uint_8_list *amount,
                                                           bool notify_receiver,
                                                           struct wire_uint_8_list *attached_amount,
                                                           struct wire_uint_8_list *payload);

void wire_refresh__method__TokenWalletDartWrapper(int64_t port_,
                                                  struct wire_TokenWalletDartWrapper *that);

void wire_preload_transactions__method__TokenWalletDartWrapper(int64_t port_,
                                                               struct wire_TokenWalletDartWrapper *that,
                                                               struct wire_uint_8_list *from_lt);

void wire_handle_block__method__TokenWalletDartWrapper(int64_t port_,
                                                       struct wire_TokenWalletDartWrapper *that,
                                                       struct wire_uint_8_list *block);

void wire_get_token_wallet_details__static_method__TokenWalletDartWrapper(int64_t port_,
                                                                          struct wire_ArcTransportBoxTrait transport,
                                                                          struct wire_uint_8_list *address);

void wire_get_token_root_details_from_token_wallet__static_method__TokenWalletDartWrapper(int64_t port_,
                                                                                          struct wire_ArcTransportBoxTrait transport,
                                                                                          struct wire_uint_8_list *token_wallet_address);

void wire_new__static_method__KeystoreDartWrapper(int64_t port_,
                                                  struct wire_StorageDartWrapper *storage,
                                                  struct wire_list_key_signer *signers,
                                                  struct wire_LedgerConnectionDartWrapper *ledger_connection);

void wire_get_entries__method__KeystoreDartWrapper(int64_t port_,
                                                   struct wire_KeystoreDartWrapper *that);

void wire_add_key__method__KeystoreDartWrapper(int64_t port_,
                                               struct wire_KeystoreDartWrapper *that,
                                               struct wire_KeySigner *signer,
                                               struct wire_uint_8_list *input);

void wire_add_keys__method__KeystoreDartWrapper(int64_t port_,
                                                struct wire_KeystoreDartWrapper *that,
                                                struct wire_KeySigner *signer,
                                                struct wire_uint_8_list *input);

void wire_update_key__method__KeystoreDartWrapper(int64_t port_,
                                                  struct wire_KeystoreDartWrapper *that,
                                                  struct wire_KeySigner *signer,
                                                  struct wire_uint_8_list *input);

void wire_export_seed__method__KeystoreDartWrapper(int64_t port_,
                                                   struct wire_KeystoreDartWrapper *that,
                                                   struct wire_KeySigner *signer,
                                                   struct wire_uint_8_list *input);

void wire_get_public_keys__method__KeystoreDartWrapper(int64_t port_,
                                                       struct wire_KeystoreDartWrapper *that,
                                                       struct wire_KeySigner *signer,
                                                       struct wire_uint_8_list *input);

void wire_encrypt__method__KeystoreDartWrapper(int64_t port_,
                                               struct wire_KeystoreDartWrapper *that,
                                               struct wire_KeySigner *signer,
                                               struct wire_uint_8_list *data,
                                               struct wire_StringList *public_keys,
                                               struct wire_uint_8_list *algorithm,
                                               struct wire_uint_8_list *input);

void wire_decrypt__method__KeystoreDartWrapper(int64_t port_,
                                               struct wire_KeystoreDartWrapper *that,
                                               struct wire_KeySigner *signer,
                                               struct wire_uint_8_list *data,
                                               struct wire_uint_8_list *input);

void wire_sign__method__KeystoreDartWrapper(int64_t port_,
                                            struct wire_KeystoreDartWrapper *that,
                                            struct wire_KeySigner *signer,
                                            struct wire_uint_8_list *data,
                                            struct wire_uint_8_list *input,
                                            int32_t *signature_id);

void wire_sign_data__method__KeystoreDartWrapper(int64_t port_,
                                                 struct wire_KeystoreDartWrapper *that,
                                                 struct wire_KeySigner *signer,
                                                 struct wire_uint_8_list *data,
                                                 struct wire_uint_8_list *input,
                                                 int32_t *signature_id);

void wire_sign_data_raw__method__KeystoreDartWrapper(int64_t port_,
                                                     struct wire_KeystoreDartWrapper *that,
                                                     struct wire_KeySigner *signer,
                                                     struct wire_uint_8_list *data,
                                                     struct wire_uint_8_list *input,
                                                     int32_t *signature_id);

void wire_remove_key__method__KeystoreDartWrapper(int64_t port_,
                                                  struct wire_KeystoreDartWrapper *that,
                                                  struct wire_uint_8_list *public_key);

void wire_remove_keys__method__KeystoreDartWrapper(int64_t port_,
                                                   struct wire_KeystoreDartWrapper *that,
                                                   struct wire_StringList *public_keys);

void wire_is_password_cached__method__KeystoreDartWrapper(int64_t port_,
                                                          struct wire_KeystoreDartWrapper *that,
                                                          struct wire_uint_8_list *public_key,
                                                          uint64_t duration);

void wire_clear_keystore__method__KeystoreDartWrapper(int64_t port_,
                                                      struct wire_KeystoreDartWrapper *that);

void wire_reload_keystore__method__KeystoreDartWrapper(int64_t port_,
                                                       struct wire_KeystoreDartWrapper *that);

void wire_verify_data__static_method__KeystoreDartWrapper(int64_t port_,
                                                          struct wire_list_key_signer *signers,
                                                          struct wire_LedgerConnectionDartWrapper *ledger_connection,
                                                          struct wire_uint_8_list *data);

void wire_new__static_method__AccountsStorageImpl(int64_t port_,
                                                  struct wire_StorageDartWrapper *storage);

void wire_get_entries__method__AccountsStorageImpl(int64_t port_,
                                                   struct wire_AccountsStorageImpl *that);

void wire_add_account__method__AccountsStorageImpl(int64_t port_,
                                                   struct wire_AccountsStorageImpl *that,
                                                   struct wire_uint_8_list *account);

void wire_add_accounts__method__AccountsStorageImpl(int64_t port_,
                                                    struct wire_AccountsStorageImpl *that,
                                                    struct wire_uint_8_list *accounts);

void wire_rename_account__method__AccountsStorageImpl(int64_t port_,
                                                      struct wire_AccountsStorageImpl *that,
                                                      struct wire_uint_8_list *account_address,
                                                      struct wire_uint_8_list *name);

void wire_add_token_wallet__method__AccountsStorageImpl(int64_t port_,
                                                        struct wire_AccountsStorageImpl *that,
                                                        struct wire_uint_8_list *account_address,
                                                        struct wire_uint_8_list *network_group,
                                                        struct wire_uint_8_list *root_token_contract);

void wire_remove_token_wallet__method__AccountsStorageImpl(int64_t port_,
                                                           struct wire_AccountsStorageImpl *that,
                                                           struct wire_uint_8_list *account_address,
                                                           struct wire_uint_8_list *network_group,
                                                           struct wire_uint_8_list *root_token_contract);

void wire_remove_account__method__AccountsStorageImpl(int64_t port_,
                                                      struct wire_AccountsStorageImpl *that,
                                                      struct wire_uint_8_list *account_address);

void wire_remove_accounts__method__AccountsStorageImpl(int64_t port_,
                                                       struct wire_AccountsStorageImpl *that,
                                                       struct wire_StringList *account_addresses);

void wire_clear__method__AccountsStorageImpl(int64_t port_, struct wire_AccountsStorageImpl *that);

void wire_reload__method__AccountsStorageImpl(int64_t port_, struct wire_AccountsStorageImpl *that);

void wire_verify_data__static_method__AccountsStorageImpl(int64_t port_,
                                                          struct wire_uint_8_list *data);

void wire_subscribe__static_method__GenericContractDartWrapper(int64_t port_,
                                                               struct wire_uint_8_list *instance_hash,
                                                               struct wire_uint_8_list *address,
                                                               bool preload_transactions,
                                                               struct wire_ArcTransportBoxTrait transport);

void wire_address__method__GenericContractDartWrapper(int64_t port_,
                                                      struct wire_GenericContractDartWrapper *that);

void wire_contract_state__method__GenericContractDartWrapper(int64_t port_,
                                                             struct wire_GenericContractDartWrapper *that);

void wire_pending_transactions__method__GenericContractDartWrapper(int64_t port_,
                                                                   struct wire_GenericContractDartWrapper *that);

void wire_polling_method__method__GenericContractDartWrapper(int64_t port_,
                                                             struct wire_GenericContractDartWrapper *that);

void wire_execute_transaction_locally__method__GenericContractDartWrapper(int64_t port_,
                                                                          struct wire_GenericContractDartWrapper *that,
                                                                          struct wire_uint_8_list *signed_message,
                                                                          struct wire_TransactionExecutionOptions *options);

void wire_estimate_fees__method__GenericContractDartWrapper(int64_t port_,
                                                            struct wire_GenericContractDartWrapper *that,
                                                            struct wire_uint_8_list *signed_message);

void wire_send__method__GenericContractDartWrapper(int64_t port_,
                                                   struct wire_GenericContractDartWrapper *that,
                                                   struct wire_uint_8_list *signed_message);

void wire_refresh__method__GenericContractDartWrapper(int64_t port_,
                                                      struct wire_GenericContractDartWrapper *that);

void wire_preload_transactions__method__GenericContractDartWrapper(int64_t port_,
                                                                   struct wire_GenericContractDartWrapper *that,
                                                                   struct wire_uint_8_list *from_lt);

void wire_handle_block__method__GenericContractDartWrapper(int64_t port_,
                                                           struct wire_GenericContractDartWrapper *that,
                                                           struct wire_uint_8_list *block);

void wire_subscribe__static_method__TonWalletDartWrapper(int64_t port_,
                                                         struct wire_uint_8_list *instance_hash,
                                                         int8_t workchain_id,
                                                         struct wire_uint_8_list *public_key,
                                                         struct wire_uint_8_list *wallet_type,
                                                         struct wire_ArcTransportBoxTrait transport);

void wire_subscribe_by_address__static_method__TonWalletDartWrapper(int64_t port_,
                                                                    struct wire_uint_8_list *instance_hash,
                                                                    struct wire_uint_8_list *address,
                                                                    struct wire_ArcTransportBoxTrait transport);

void wire_subscribe_by_existing__static_method__TonWalletDartWrapper(int64_t port_,
                                                                     struct wire_uint_8_list *instance_hash,
                                                                     struct wire_uint_8_list *existing_wallet,
                                                                     struct wire_ArcTransportBoxTrait transport);

void wire_workchain__method__TonWalletDartWrapper(int64_t port_,
                                                  struct wire_TonWalletDartWrapper *that);

void wire_address__method__TonWalletDartWrapper(int64_t port_,
                                                struct wire_TonWalletDartWrapper *that);

void wire_public_key__method__TonWalletDartWrapper(int64_t port_,
                                                   struct wire_TonWalletDartWrapper *that);

void wire_wallet_type__method__TonWalletDartWrapper(int64_t port_,
                                                    struct wire_TonWalletDartWrapper *that);

void wire_contract_state__method__TonWalletDartWrapper(int64_t port_,
                                                       struct wire_TonWalletDartWrapper *that);

void wire_pending_transactions__method__TonWalletDartWrapper(int64_t port_,
                                                             struct wire_TonWalletDartWrapper *that);

void wire_polling_method__method__TonWalletDartWrapper(int64_t port_,
                                                       struct wire_TonWalletDartWrapper *that);

void wire_details__method__TonWalletDartWrapper(int64_t port_,
                                                struct wire_TonWalletDartWrapper *that);

void wire_unconfirmed_transactions__method__TonWalletDartWrapper(int64_t port_,
                                                                 struct wire_TonWalletDartWrapper *that);

void wire_custodians__method__TonWalletDartWrapper(int64_t port_,
                                                   struct wire_TonWalletDartWrapper *that);

void wire_prepare_deploy__method__TonWalletDartWrapper(int64_t port_,
                                                       struct wire_TonWalletDartWrapper *that,
                                                       struct wire_uint_8_list *expiration);

void wire_prepare_deploy_with_multiple_owners__method__TonWalletDartWrapper(int64_t port_,
                                                                            struct wire_TonWalletDartWrapper *that,
                                                                            struct wire_uint_8_list *expiration,
                                                                            struct wire_StringList *custodians,
                                                                            uint8_t req_confirms);

void wire_prepare_transfer__method__TonWalletDartWrapper(int64_t port_,
                                                         struct wire_TonWalletDartWrapper *that,
                                                         struct wire_uint_8_list *contract_state,
                                                         struct wire_uint_8_list *public_key,
                                                         struct wire_uint_8_list *destination,
                                                         struct wire_uint_8_list *amount,
                                                         bool bounce,
                                                         struct wire_uint_8_list *body,
                                                         struct wire_uint_8_list *expiration);

void wire_prepare_confirm_transaction__method__TonWalletDartWrapper(int64_t port_,
                                                                    struct wire_TonWalletDartWrapper *that,
                                                                    struct wire_uint_8_list *contract_state,
                                                                    struct wire_uint_8_list *public_key,
                                                                    struct wire_uint_8_list *transaction_id,
                                                                    struct wire_uint_8_list *expiration);

void wire_estimate_fees__method__TonWalletDartWrapper(int64_t port_,
                                                      struct wire_TonWalletDartWrapper *that,
                                                      struct wire_uint_8_list *signed_message);

void wire_send__method__TonWalletDartWrapper(int64_t port_,
                                             struct wire_TonWalletDartWrapper *that,
                                             struct wire_uint_8_list *signed_message);

void wire_refresh__method__TonWalletDartWrapper(int64_t port_,
                                                struct wire_TonWalletDartWrapper *that);

void wire_preload_transactions__method__TonWalletDartWrapper(int64_t port_,
                                                             struct wire_TonWalletDartWrapper *that,
                                                             struct wire_uint_8_list *from_lt);

void wire_handle_block__method__TonWalletDartWrapper(int64_t port_,
                                                     struct wire_TonWalletDartWrapper *that,
                                                     struct wire_uint_8_list *block);

void wire_find_existing_wallets__static_method__TonWalletDartWrapper(int64_t port_,
                                                                     struct wire_ArcTransportBoxTrait transport,
                                                                     struct wire_uint_8_list *public_key,
                                                                     int8_t workchain_id,
                                                                     struct wire_uint_8_list *wallet_types);

void wire_get_existing_wallet_info__static_method__TonWalletDartWrapper(int64_t port_,
                                                                        struct wire_ArcTransportBoxTrait transport,
                                                                        struct wire_uint_8_list *address);

void wire_get_custodians__static_method__TonWalletDartWrapper(int64_t port_,
                                                              struct wire_ArcTransportBoxTrait transport,
                                                              struct wire_uint_8_list *address);

void wire_new__static_method__JrpcConnectionDartWrapper(int64_t port_,
                                                        struct wire_uint_8_list *instance_hash);

void wire_new__static_method__GqlConnectionDartWrapper(int64_t port_,
                                                       bool is_local,
                                                       struct wire_uint_8_list *instance_hash);

void wire_new__static_method__LedgerConnectionDartWrapper(int64_t port_,
                                                          struct wire_uint_8_list *instance_hash);

void wire_new__static_method__LedgerConnectionImpl(int64_t port_,
                                                   struct wire_uint_8_list *instance_hash);

void wire_new__static_method__StorageDartWrapper(int64_t port_,
                                                 struct wire_uint_8_list *instance_hash);

void wire_new__static_method__StorageImpl(int64_t port_, struct wire_uint_8_list *instance_hash);

void wire_new__static_method__MyClass(int64_t port_, int32_t a);

void wire_my_format__method__MyClass(int64_t port_, struct wire_MyClass *that);

void wire_new__static_method__CallerTestClass(int64_t port_,
                                              struct wire_uint_8_list *instance_hash,
                                              int32_t value);

void wire_call_some_func__method__CallerTestClass(int64_t port_, struct wire_CallerTestClass *that);

struct wire_ArcAccountsStorageBoxTrait new_ArcAccountsStorageBoxTrait(void);

struct wire_ArcGenericContractBoxTrait new_ArcGenericContractBoxTrait(void);

struct wire_ArcGqlConnectionBoxTrait new_ArcGqlConnectionBoxTrait(void);

struct wire_ArcJrpcConnectionBoxTrait new_ArcJrpcConnectionBoxTrait(void);

struct wire_ArcKeyStoreApiBoxTrait new_ArcKeyStoreApiBoxTrait(void);

struct wire_ArcLedgerConnectionBoxTrait new_ArcLedgerConnectionBoxTrait(void);

struct wire_ArcStorageBoxTrait new_ArcStorageBoxTrait(void);

struct wire_ArcTokenWalletBoxTrait new_ArcTokenWalletBoxTrait(void);

struct wire_ArcTonWalletBoxTrait new_ArcTonWalletBoxTrait(void);

struct wire_ArcTransportBoxTrait new_ArcTransportBoxTrait(void);

struct wire_ArcUnsignedMessageBoxTrait new_ArcUnsignedMessageBoxTrait(void);

struct wire_StringList *new_StringList_0(int32_t len);

struct wire_AccountsStorageImpl *new_box_autoadd_accounts_storage_impl_0(void);

struct wire_CallerTestClass *new_box_autoadd_caller_test_class_0(void);

struct wire_DartCallStub *new_box_autoadd_dart_call_stub_0(void);

struct wire_DynamicValue *new_box_autoadd_dynamic_value_0(void);

struct wire_GenericContractDartWrapper *new_box_autoadd_generic_contract_dart_wrapper_0(void);

struct wire_GqlConnectionDartWrapper *new_box_autoadd_gql_connection_dart_wrapper_0(void);

struct wire_GqlTransportImpl *new_box_autoadd_gql_transport_impl_0(void);

int32_t *new_box_autoadd_i32_0(int32_t value);

struct wire_JrpcConnectionDartWrapper *new_box_autoadd_jrpc_connection_dart_wrapper_0(void);

struct wire_JrpcTransportImpl *new_box_autoadd_jrpc_transport_impl_0(void);

struct wire_KeySigner *new_box_autoadd_key_signer_0(void);

struct wire_KeystoreDartWrapper *new_box_autoadd_keystore_dart_wrapper_0(void);

struct wire_LedgerConnectionDartWrapper *new_box_autoadd_ledger_connection_dart_wrapper_0(void);

struct wire_MnemonicType *new_box_autoadd_mnemonic_type_0(void);

struct wire_MyClass *new_box_autoadd_my_class_0(void);

struct wire_StorageDartWrapper *new_box_autoadd_storage_dart_wrapper_0(void);

struct wire_TokenWalletDartWrapper *new_box_autoadd_token_wallet_dart_wrapper_0(void);

struct wire_TonWalletDartWrapper *new_box_autoadd_ton_wallet_dart_wrapper_0(void);

struct wire_TransactionExecutionOptions *new_box_autoadd_transaction_execution_options_0(void);

uint64_t *new_box_autoadd_u64_0(uint64_t value);

struct wire_UnsignedMessageImpl *new_box_autoadd_unsigned_message_impl_0(void);

struct wire_list_dynamic_named_value *new_list_dynamic_named_value_0(int32_t len);

struct wire_list_dynamic_value *new_list_dynamic_value_0(int32_t len);

struct wire_list_key_signer *new_list_key_signer_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void drop_opaque_ArcAccountsStorageBoxTrait(const void *ptr);

const void *share_opaque_ArcAccountsStorageBoxTrait(const void *ptr);

void drop_opaque_ArcGenericContractBoxTrait(const void *ptr);

const void *share_opaque_ArcGenericContractBoxTrait(const void *ptr);

void drop_opaque_ArcGqlConnectionBoxTrait(const void *ptr);

const void *share_opaque_ArcGqlConnectionBoxTrait(const void *ptr);

void drop_opaque_ArcJrpcConnectionBoxTrait(const void *ptr);

const void *share_opaque_ArcJrpcConnectionBoxTrait(const void *ptr);

void drop_opaque_ArcKeyStoreApiBoxTrait(const void *ptr);

const void *share_opaque_ArcKeyStoreApiBoxTrait(const void *ptr);

void drop_opaque_ArcLedgerConnectionBoxTrait(const void *ptr);

const void *share_opaque_ArcLedgerConnectionBoxTrait(const void *ptr);

void drop_opaque_ArcStorageBoxTrait(const void *ptr);

const void *share_opaque_ArcStorageBoxTrait(const void *ptr);

void drop_opaque_ArcTokenWalletBoxTrait(const void *ptr);

const void *share_opaque_ArcTokenWalletBoxTrait(const void *ptr);

void drop_opaque_ArcTonWalletBoxTrait(const void *ptr);

const void *share_opaque_ArcTonWalletBoxTrait(const void *ptr);

void drop_opaque_ArcTransportBoxTrait(const void *ptr);

const void *share_opaque_ArcTransportBoxTrait(const void *ptr);

void drop_opaque_ArcUnsignedMessageBoxTrait(const void *ptr);

const void *share_opaque_ArcUnsignedMessageBoxTrait(const void *ptr);

union DynamicValueKind *inflate_DynamicValue_U16(void);

union DynamicValueKind *inflate_DynamicValue_U32(void);

union DynamicValueKind *inflate_DynamicValue_I32(void);

union DynamicValueKind *inflate_DynamicValue_U64(void);

union DynamicValueKind *inflate_DynamicValue_I64(void);

union DynamicValueKind *inflate_DynamicValue_F32(void);

union DynamicValueKind *inflate_DynamicValue_F64(void);

union DynamicValueKind *inflate_DynamicValue_String(void);

union DynamicValueKind *inflate_DynamicValue_MegaStruct(void);

union DynamicValueKind *inflate_DynamicValue_Error(void);

union KeySignerKind *inflate_KeySigner_Stub(void);

union MnemonicTypeKind *inflate_MnemonicType_Labs(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_verify_signature);
    dummy_var ^= ((int64_t) (void*) wire_nt_generate_key);
    dummy_var ^= ((int64_t) (void*) wire_nt_get_hints);
    dummy_var ^= ((int64_t) (void*) wire_nt_derive_from_phrase);
    dummy_var ^= ((int64_t) (void*) wire_check_public_key);
    dummy_var ^= ((int64_t) (void*) wire_run_local);
    dummy_var ^= ((int64_t) (void*) wire_get_expected_address);
    dummy_var ^= ((int64_t) (void*) wire_encode_internal_input);
    dummy_var ^= ((int64_t) (void*) wire_create_external_message_without_signature);
    dummy_var ^= ((int64_t) (void*) wire_create_external_message);
    dummy_var ^= ((int64_t) (void*) wire_parse_known_payload);
    dummy_var ^= ((int64_t) (void*) wire_decode_input);
    dummy_var ^= ((int64_t) (void*) wire_decode_event);
    dummy_var ^= ((int64_t) (void*) wire_decode_output);
    dummy_var ^= ((int64_t) (void*) wire_decode_transaction);
    dummy_var ^= ((int64_t) (void*) wire_decode_transaction_events);
    dummy_var ^= ((int64_t) (void*) wire_get_boc_hash);
    dummy_var ^= ((int64_t) (void*) wire_pack_into_cell);
    dummy_var ^= ((int64_t) (void*) wire_unpack_from_cell);
    dummy_var ^= ((int64_t) (void*) wire_pack_std_smc_addr);
    dummy_var ^= ((int64_t) (void*) wire_unpack_std_smc_addr);
    dummy_var ^= ((int64_t) (void*) wire_validate_address);
    dummy_var ^= ((int64_t) (void*) wire_repack_address);
    dummy_var ^= ((int64_t) (void*) wire_extract_public_key);
    dummy_var ^= ((int64_t) (void*) wire_code_to_tvc);
    dummy_var ^= ((int64_t) (void*) wire_merge_tvc);
    dummy_var ^= ((int64_t) (void*) wire_split_tvc);
    dummy_var ^= ((int64_t) (void*) wire_set_code_salt);
    dummy_var ^= ((int64_t) (void*) wire_get_code_salt);
    dummy_var ^= ((int64_t) (void*) wire_test_logger_info);
    dummy_var ^= ((int64_t) (void*) wire_test_logger_debug);
    dummy_var ^= ((int64_t) (void*) wire_test_logger_warn);
    dummy_var ^= ((int64_t) (void*) wire_test_logger_error);
    dummy_var ^= ((int64_t) (void*) wire_test_logger_panic);
    dummy_var ^= ((int64_t) (void*) wire_test_caller_call_test0_async);
    dummy_var ^= ((int64_t) (void*) wire_test_caller_call_test0_sync);
    dummy_var ^= ((int64_t) (void*) wire_test_caller_call_test1_async);
    dummy_var ^= ((int64_t) (void*) wire_init_logger);
    dummy_var ^= ((int64_t) (void*) wire_create_log_stream);
    dummy_var ^= ((int64_t) (void*) wire_init_caller);
    dummy_var ^= ((int64_t) (void*) wire_call_send_result);
    dummy_var ^= ((int64_t) (void*) wire_simple_log);
    dummy_var ^= ((int64_t) (void*) wire_simple_panic);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder_sync);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder);
    dummy_var ^= ((int64_t) (void*) wire_stub_dv);
    dummy_var ^= ((int64_t) (void*) wire_stub_dcs);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_dart);
    dummy_var ^= ((int64_t) (void*) wire_stub_call_dart);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_func0);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_func1);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_func2);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_func3);
    dummy_var ^= ((int64_t) (void*) wire_refresh_timeout__method__UnsignedMessageImpl);
    dummy_var ^= ((int64_t) (void*) wire_expire_at__method__UnsignedMessageImpl);
    dummy_var ^= ((int64_t) (void*) wire_hash__method__UnsignedMessageImpl);
    dummy_var ^= ((int64_t) (void*) wire_sign__method__UnsignedMessageImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_contract_state__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_full_contract_state__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_accounts_by_code_hash__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_transactions__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_transaction__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_signature_id__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_network_id__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_latest_block__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_block__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_wait_for_next_block__method__GqlTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_contract_state__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_full_contract_state__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_accounts_by_code_hash__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_transactions__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_transaction__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_signature_id__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_network_id__method__JrpcTransportImpl);
    dummy_var ^= ((int64_t) (void*) wire_subscribe__static_method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_owner__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_address__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_symbol__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_version__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_balance__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_contract_state__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_prepare_transfer__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_refresh__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_preload_transactions__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_handle_block__method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_token_wallet_details__static_method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_token_root_details_from_token_wallet__static_method__TokenWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_entries__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_add_key__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_add_keys__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_update_key__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_export_seed__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_public_keys__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_encrypt__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_decrypt__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_sign__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_sign_data__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_sign_data_raw__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_remove_key__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_remove_keys__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_is_password_cached__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_clear_keystore__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_reload_keystore__method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_verify_data__static_method__KeystoreDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_get_entries__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_add_account__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_add_accounts__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_rename_account__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_add_token_wallet__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_remove_token_wallet__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_remove_account__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_remove_accounts__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_clear__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_reload__method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_verify_data__static_method__AccountsStorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_subscribe__static_method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_address__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_contract_state__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_pending_transactions__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_polling_method__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_execute_transaction_locally__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_estimate_fees__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_send__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_refresh__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_preload_transactions__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_handle_block__method__GenericContractDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_subscribe__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_subscribe_by_address__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_subscribe_by_existing__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_workchain__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_address__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_public_key__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_wallet_type__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_contract_state__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_pending_transactions__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_polling_method__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_details__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_unconfirmed_transactions__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_custodians__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_prepare_deploy__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_prepare_deploy_with_multiple_owners__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_prepare_transfer__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_prepare_confirm_transaction__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_estimate_fees__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_send__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_refresh__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_preload_transactions__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_handle_block__method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_find_existing_wallets__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_existing_wallet_info__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_get_custodians__static_method__TonWalletDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__JrpcConnectionDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__GqlConnectionDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__LedgerConnectionDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__LedgerConnectionImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__StorageDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__StorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_my_format__method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) wire_call_some_func__method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) new_ArcAccountsStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcGenericContractBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcKeyStoreApiBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcLedgerConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcTokenWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcTonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_StringList_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_accounts_storage_impl_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_caller_test_class_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dart_call_stub_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_generic_contract_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_gql_connection_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_gql_transport_impl_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_i32_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_jrpc_connection_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_jrpc_transport_impl_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_key_signer_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_keystore_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_ledger_connection_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_mnemonic_type_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_my_class_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_storage_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_token_wallet_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_ton_wallet_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_transaction_execution_options_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_u64_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_unsigned_message_impl_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_named_value_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_list_key_signer_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcAccountsStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcAccountsStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcGenericContractBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcGenericContractBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcKeyStoreApiBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcKeyStoreApiBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcLedgerConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcLedgerConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcStorageBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcTokenWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcTokenWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcTonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcTonWalletBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_U16);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_U32);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_I32);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_U64);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_I64);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_F32);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_F64);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_String);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_MegaStruct);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_Error);
    dummy_var ^= ((int64_t) (void*) inflate_KeySigner_Stub);
    dummy_var ^= ((int64_t) (void*) inflate_MnemonicType_Labs);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
