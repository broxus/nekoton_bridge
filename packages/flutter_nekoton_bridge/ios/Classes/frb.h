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

void wire_simple_log(int64_t port_, struct wire_uint_8_list *string);

void wire_simple_panic(int64_t port_);

WireSyncReturn wire_simple_adder_sync(int32_t a, int32_t b);

void wire_simple_adder(int64_t port_, int32_t a, int32_t b);

void wire_resend_mnemonic(int64_t port_, struct wire_MnemonicType *mnemonic);

WireSyncReturn wire_nt_generate_key(struct wire_MnemonicType *account_type);

WireSyncReturn wire_nt_get_hints(struct wire_uint_8_list *input);

WireSyncReturn wire_nt_derive_from_phrase(struct wire_uint_8_list *phrase,
                                          struct wire_MnemonicType *mnemonic_type);

void wire_new__static_method__MyClass(int64_t port_, int32_t a);

void wire_my_format__method__MyClass(int64_t port_, struct wire_MyClass *that);

struct wire_MnemonicType *new_box_autoadd_mnemonic_type_0(void);

struct wire_MyClass *new_box_autoadd_my_class_0(void);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

union MnemonicTypeKind *inflate_MnemonicType_Labs(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_init_logger);
    dummy_var ^= ((int64_t) (void*) wire_create_log_stream);
    dummy_var ^= ((int64_t) (void*) wire_simple_log);
    dummy_var ^= ((int64_t) (void*) wire_simple_panic);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder_sync);
    dummy_var ^= ((int64_t) (void*) wire_simple_adder);
    dummy_var ^= ((int64_t) (void*) wire_resend_mnemonic);
    dummy_var ^= ((int64_t) (void*) wire_nt_generate_key);
    dummy_var ^= ((int64_t) (void*) wire_nt_get_hints);
    dummy_var ^= ((int64_t) (void*) wire_nt_derive_from_phrase);
    dummy_var ^= ((int64_t) (void*) wire_new__static_method__MyClass);
    dummy_var ^= ((int64_t) (void*) wire_my_format__method__MyClass);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_mnemonic_type_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_my_class_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) inflate_MnemonicType_Labs);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
