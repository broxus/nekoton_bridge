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

typedef struct DartCObject *WireSyncReturn;

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

typedef struct wire_BoxUnsignedMessageBoxTrait {
  const void *ptr;
} wire_BoxUnsignedMessageBoxTrait;

typedef struct wire_UnsignedMessageImpl {
  struct wire_BoxUnsignedMessageBoxTrait inner_message;
} wire_UnsignedMessageImpl;

typedef struct wire_ArcGqlConnectionBoxTrait {
  const void *ptr;
} wire_ArcGqlConnectionBoxTrait;

typedef struct wire_GqlConnectionDartWrapper {
  struct wire_ArcGqlConnectionBoxTrait inner_connection;
} wire_GqlConnectionDartWrapper;

typedef struct wire_BoxGqlTransportBoxTrait {
  const void *ptr;
} wire_BoxGqlTransportBoxTrait;

typedef struct wire_GqlTransportImpl {
  struct wire_BoxGqlTransportBoxTrait inner_transport;
} wire_GqlTransportImpl;

typedef struct wire_ArcJrpcConnectionBoxTrait {
  const void *ptr;
} wire_ArcJrpcConnectionBoxTrait;

typedef struct wire_JrpcConnectionDartWrapper {
  struct wire_ArcJrpcConnectionBoxTrait inner_connection;
} wire_JrpcConnectionDartWrapper;

typedef struct wire_ArcJrpcTransportBoxTrait {
  const void *ptr;
} wire_ArcJrpcTransportBoxTrait;

typedef struct wire_JrpcTransportImpl {
  struct wire_ArcJrpcTransportBoxTrait inner_transport;
} wire_JrpcTransportImpl;

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

void wire_init_logger(int64_t port_, int32_t level, bool mobile_logger);

void wire_create_log_stream(int64_t port_);

void wire_init_caller(int64_t port_);

void wire_call_send_result(int64_t port_,
                           struct wire_uint_8_list *id,
                           struct wire_DynamicValue *value);

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

void wire_new__static_method__JrpcConnectionDartWrapper(int64_t port_,
                                                        struct wire_uint_8_list *instance_hash);

void wire_new__static_method__GqlConnectionDartWrapper(int64_t port_,
                                                       bool is_local,
                                                       struct wire_uint_8_list *instance_hash);

void wire_new__static_method__LedgerConnectionImpl(int64_t port_,
                                                   struct wire_uint_8_list *instance_hash);

void wire_new__static_method__StorageImpl(int64_t port_, struct wire_uint_8_list *instance_hash);

void wire_new__static_method__MyClass(int64_t port_, int32_t a);

void wire_my_format__method__MyClass(int64_t port_, struct wire_MyClass *that);

void wire_new__static_method__CallerTestClass(int64_t port_,
                                              struct wire_uint_8_list *instance_hash,
                                              int32_t value);

void wire_call_some_func__method__CallerTestClass(int64_t port_, struct wire_CallerTestClass *that);

struct wire_ArcGqlConnectionBoxTrait new_ArcGqlConnectionBoxTrait(void);

struct wire_ArcJrpcConnectionBoxTrait new_ArcJrpcConnectionBoxTrait(void);

struct wire_ArcJrpcTransportBoxTrait new_ArcJrpcTransportBoxTrait(void);

struct wire_BoxGqlTransportBoxTrait new_BoxGqlTransportBoxTrait(void);

struct wire_BoxUnsignedMessageBoxTrait new_BoxUnsignedMessageBoxTrait(void);

struct wire_CallerTestClass *new_box_autoadd_caller_test_class_0(void);

struct wire_DartCallStub *new_box_autoadd_dart_call_stub_0(void);

struct wire_DynamicValue *new_box_autoadd_dynamic_value_0(void);

struct wire_GqlConnectionDartWrapper *new_box_autoadd_gql_connection_dart_wrapper_0(void);

struct wire_GqlTransportImpl *new_box_autoadd_gql_transport_impl_0(void);

struct wire_JrpcConnectionDartWrapper *new_box_autoadd_jrpc_connection_dart_wrapper_0(void);

struct wire_JrpcTransportImpl *new_box_autoadd_jrpc_transport_impl_0(void);

struct wire_MnemonicType *new_box_autoadd_mnemonic_type_0(void);

struct wire_MyClass *new_box_autoadd_my_class_0(void);

uint64_t *new_box_autoadd_u64_0(uint64_t value);

struct wire_UnsignedMessageImpl *new_box_autoadd_unsigned_message_impl_0(void);

struct wire_list_dynamic_named_value *new_list_dynamic_named_value_0(int32_t len);

struct wire_list_dynamic_value *new_list_dynamic_value_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void drop_opaque_ArcGqlConnectionBoxTrait(const void *ptr);

const void *share_opaque_ArcGqlConnectionBoxTrait(const void *ptr);

void drop_opaque_ArcJrpcConnectionBoxTrait(const void *ptr);

const void *share_opaque_ArcJrpcConnectionBoxTrait(const void *ptr);

void drop_opaque_ArcJrpcTransportBoxTrait(const void *ptr);

const void *share_opaque_ArcJrpcTransportBoxTrait(const void *ptr);

void drop_opaque_BoxGqlTransportBoxTrait(const void *ptr);

const void *share_opaque_BoxGqlTransportBoxTrait(const void *ptr);

void drop_opaque_BoxUnsignedMessageBoxTrait(const void *ptr);

const void *share_opaque_BoxUnsignedMessageBoxTrait(const void *ptr);

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
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__JrpcConnectionDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__GqlConnectionDartWrapper);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__LedgerConnectionImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__StorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_my_format__method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) wire_call_some_func__method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) new_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_ArcJrpcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_BoxGqlTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_BoxUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_caller_test_class_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dart_call_stub_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_gql_connection_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_gql_transport_impl_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_jrpc_connection_dart_wrapper_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_jrpc_transport_impl_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_mnemonic_type_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_my_class_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_u64_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_unsigned_message_impl_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_named_value_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcGqlConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcJrpcConnectionBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_ArcJrpcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_ArcJrpcTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_BoxGqlTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_BoxGqlTransportBoxTrait);
    dummy_var ^= ((int64_t) (void*) drop_opaque_BoxUnsignedMessageBoxTrait);
    dummy_var ^= ((int64_t) (void*) share_opaque_BoxUnsignedMessageBoxTrait);
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
    dummy_var ^= ((int64_t) (void*) inflate_MnemonicType_Labs);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
