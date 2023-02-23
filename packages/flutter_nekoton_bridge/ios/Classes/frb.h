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

typedef struct DartCObject *WireSyncReturn;

typedef struct wire_DynamicValue_U32 {
  uint32_t field0;
} wire_DynamicValue_U32;

typedef struct wire_DynamicValue_String {
  struct wire_uint_8_list *field0;
} wire_DynamicValue_String;

typedef union DynamicValueKind {
  struct wire_DynamicValue_U32 *U32;
  struct wire_DynamicValue_String *String;
} DynamicValueKind;

typedef struct wire_DynamicValue {
  int32_t tag;
  union DynamicValueKind *kind;
} wire_DynamicValue;

typedef struct wire_list_dynamic_value {
  struct wire_DynamicValue *ptr;
  int32_t len;
} wire_list_dynamic_value;

typedef struct wire_DartCallStub {
  struct wire_uint_8_list *fn_name;
  struct wire_list_dynamic_value *args;
} wire_DartCallStub;

typedef struct wire_MyClass {
  int32_t val;
} wire_MyClass;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_init_logger(int64_t port_, int32_t level, bool mobile_logger);

void wire_create_log_stream(int64_t port_);

void wire_stub_dv(int64_t port_);

void wire_init_caller(int64_t port_);

void wire_simple_log(int64_t port_, struct wire_uint_8_list *string);

void wire_simple_panic(int64_t port_);

WireSyncReturn wire_simple_adder_sync(int32_t a, int32_t b);

void wire_simple_adder(int64_t port_, int32_t a, int32_t b);

void wire_stub_dcs(int64_t port_);

void wire_simple_call_dart(int64_t port_);

void wire_stub_call_dart(int64_t port_, struct wire_DartCallStub *stub);

void wire_new__static_method__MyClass(int64_t port_, int32_t a);

void wire_my_format__method__MyClass(int64_t port_, struct wire_MyClass *that);

struct wire_DartCallStub *new_box_autoadd_dart_call_stub_0(void);

struct wire_MyClass *new_box_autoadd_my_class_0(void);

struct wire_list_dynamic_value *new_list_dynamic_value_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

union DynamicValueKind *inflate_DynamicValue_U32(void);

union DynamicValueKind *inflate_DynamicValue_String(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_init_logger);
    dummy_var ^= ((int64_t) (void*) wire_create_log_stream);
    dummy_var ^= ((int64_t) (void*) wire_stub_dv);
    dummy_var ^= ((int64_t) (void*) wire_init_caller);
    dummy_var ^= ((int64_t) (void*) wire_simple_log);
    dummy_var ^= ((int64_t) (void*) wire_simple_panic);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder_sync);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder);
    dummy_var ^= ((int64_t) (void*) wire_stub_dcs);
    dummy_var ^= ((int64_t) (void*) wire_simple_call_dart);
    dummy_var ^= ((int64_t) (void*) wire_stub_call_dart);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_my_format__method__MyClass);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_dart_call_stub_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_my_class_0);
    dummy_var ^= ((int64_t) (void*) new_list_dynamic_value_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_U32);
    dummy_var ^= ((int64_t) (void*) inflate_DynamicValue_String);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}