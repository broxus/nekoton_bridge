#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

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

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

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

void wire_nt_generate_key(int64_t port_, struct wire_MnemonicType *account_type);

void wire_nt_get_hints(int64_t port_, struct wire_uint_8_list *input);

void wire_nt_derive_from_phrase(int64_t port_,
                                struct wire_uint_8_list *phrase,
                                struct wire_MnemonicType *mnemonic_type);

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

void wire_new__static_method__JrpcConnectionImpl(int64_t port_,
                                                 struct wire_uint_8_list *instance_hash);

void wire_new__static_method__GqlConnectionImpl(int64_t port_,
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

struct wire_CallerTestClass *new_box_autoadd_caller_test_class_0(void);

struct wire_DartCallStub *new_box_autoadd_dart_call_stub_0(void);

struct wire_DynamicValue *new_box_autoadd_dynamic_value_0(void);

struct wire_MnemonicType *new_box_autoadd_mnemonic_type_0(void);

struct wire_MyClass *new_box_autoadd_my_class_0(void);

struct wire_list_dynamic_named_value *new_list_dynamic_named_value_0(int32_t len);

struct wire_list_dynamic_value *new_list_dynamic_value_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

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
    dummy_var ^= ((int64_t) (void*) wire_nt_generate_key);
    dummy_var ^= ((int64_t) (void*) wire_nt_get_hints);
    dummy_var ^= ((int64_t) (void*) wire_nt_derive_from_phrase);
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
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__JrpcConnectionImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__GqlConnectionImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__LedgerConnectionImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__StorageImpl);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_my_format__method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) wire_call_some_func__method__CallerTestClass);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_caller_test_class_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dart_call_stub_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_mnemonic_type_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_my_class_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_named_value_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
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
