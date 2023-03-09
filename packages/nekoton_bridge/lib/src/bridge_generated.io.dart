// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.68.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class NekotonBridgePlatform extends FlutterRustBridgeBase<NekotonBridgeWire> {
  NekotonBridgePlatform(ffi.DynamicLibrary dylib)
      : super(NekotonBridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_CallerTestClass> api2wire_box_autoadd_caller_test_class(
      CallerTestClass raw) {
    final ptr = inner.new_box_autoadd_caller_test_class_0();
    _api_fill_to_wire_caller_test_class(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_DartCallStub> api2wire_box_autoadd_dart_call_stub(
      DartCallStub raw) {
    final ptr = inner.new_box_autoadd_dart_call_stub_0();
    _api_fill_to_wire_dart_call_stub(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_DynamicValue> api2wire_box_autoadd_dynamic_value(
      DynamicValue raw) {
    final ptr = inner.new_box_autoadd_dynamic_value_0();
    _api_fill_to_wire_dynamic_value(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_MnemonicType> api2wire_box_autoadd_mnemonic_type(
      MnemonicType raw) {
    final ptr = inner.new_box_autoadd_mnemonic_type_0();
    _api_fill_to_wire_mnemonic_type(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_MyClass> api2wire_box_autoadd_my_class(MyClass raw) {
    final ptr = inner.new_box_autoadd_my_class_0();
    _api_fill_to_wire_my_class(raw, ptr.ref);
    return ptr;
  }

  @protected
  int api2wire_i64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_list_dynamic_named_value> api2wire_list_dynamic_named_value(
      List<DynamicNamedValue> raw) {
    final ans = inner.new_list_dynamic_named_value_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_dynamic_named_value(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_dynamic_value> api2wire_list_dynamic_value(
      List<DynamicValue> raw) {
    final ans = inner.new_list_dynamic_value_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_dynamic_value(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_DynamicValue> api2wire_opt_box_autoadd_dynamic_value(
      DynamicValue? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_dynamic_value(raw);
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_caller_test_class(
      CallerTestClass apiObj, ffi.Pointer<wire_CallerTestClass> wireObj) {
    _api_fill_to_wire_caller_test_class(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_dart_call_stub(
      DartCallStub apiObj, ffi.Pointer<wire_DartCallStub> wireObj) {
    _api_fill_to_wire_dart_call_stub(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_dynamic_value(
      DynamicValue apiObj, ffi.Pointer<wire_DynamicValue> wireObj) {
    _api_fill_to_wire_dynamic_value(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_mnemonic_type(
      MnemonicType apiObj, ffi.Pointer<wire_MnemonicType> wireObj) {
    _api_fill_to_wire_mnemonic_type(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_my_class(
      MyClass apiObj, ffi.Pointer<wire_MyClass> wireObj) {
    _api_fill_to_wire_my_class(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_caller_test_class(
      CallerTestClass apiObj, wire_CallerTestClass wireObj) {
    wireObj.instance_hash = api2wire_String(apiObj.instanceHash);
    wireObj.value = api2wire_i32(apiObj.value);
  }

  void _api_fill_to_wire_dart_call_stub(
      DartCallStub apiObj, wire_DartCallStub wireObj) {
    wireObj.instance_hash = api2wire_String(apiObj.instanceHash);
    wireObj.fn_name = api2wire_String(apiObj.fnName);
    wireObj.args = api2wire_list_dynamic_value(apiObj.args);
    wireObj.named_args = api2wire_list_dynamic_named_value(apiObj.namedArgs);
  }

  void _api_fill_to_wire_dynamic_named_value(
      DynamicNamedValue apiObj, wire_DynamicNamedValue wireObj) {
    wireObj.name = api2wire_String(apiObj.name);
    wireObj.value = api2wire_opt_box_autoadd_dynamic_value(apiObj.value);
  }

  void _api_fill_to_wire_dynamic_value(
      DynamicValue apiObj, wire_DynamicValue wireObj) {
    if (apiObj is DynamicValue_U32) {
      var pre_field0 = api2wire_u32(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_DynamicValue_U32();
      wireObj.kind.ref.U32.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_I32) {
      var pre_field0 = api2wire_i32(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_DynamicValue_I32();
      wireObj.kind.ref.I32.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_U64) {
      var pre_field0 = api2wire_u64(apiObj.field0);
      wireObj.tag = 2;
      wireObj.kind = inner.inflate_DynamicValue_U64();
      wireObj.kind.ref.U64.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_I64) {
      var pre_field0 = api2wire_i64(apiObj.field0);
      wireObj.tag = 3;
      wireObj.kind = inner.inflate_DynamicValue_I64();
      wireObj.kind.ref.I64.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_F32) {
      var pre_field0 = api2wire_f32(apiObj.field0);
      wireObj.tag = 4;
      wireObj.kind = inner.inflate_DynamicValue_F32();
      wireObj.kind.ref.F32.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_F64) {
      var pre_field0 = api2wire_f64(apiObj.field0);
      wireObj.tag = 5;
      wireObj.kind = inner.inflate_DynamicValue_F64();
      wireObj.kind.ref.F64.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_String) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 6;
      wireObj.kind = inner.inflate_DynamicValue_String();
      wireObj.kind.ref.String.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_MegaStruct) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 7;
      wireObj.kind = inner.inflate_DynamicValue_MegaStruct();
      wireObj.kind.ref.MegaStruct.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_Error) {
      var pre_field0 = api2wire_error_code(apiObj.field0);
      wireObj.tag = 8;
      wireObj.kind = inner.inflate_DynamicValue_Error();
      wireObj.kind.ref.Error.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DynamicValue_None) {
      wireObj.tag = 9;
      return;
    }
  }

  void _api_fill_to_wire_mnemonic_type(
      MnemonicType apiObj, wire_MnemonicType wireObj) {
    if (apiObj is MnemonicType_Legacy) {
      wireObj.tag = 0;
      return;
    }
    if (apiObj is MnemonicType_Labs) {
      var pre_field0 = api2wire_u16(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_MnemonicType_Labs();
      wireObj.kind.ref.Labs.ref.field0 = pre_field0;
      return;
    }
  }

  void _api_fill_to_wire_my_class(MyClass apiObj, wire_MyClass wireObj) {
    wireObj.val = api2wire_i32(apiObj.val);
  }

  void _api_fill_to_wire_opt_box_autoadd_dynamic_value(
      DynamicValue? apiObj, ffi.Pointer<wire_DynamicValue> wireObj) {
    if (apiObj != null)
      _api_fill_to_wire_box_autoadd_dynamic_value(apiObj, wireObj);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class NekotonBridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NekotonBridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NekotonBridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_resend_mnemonic(
    int port_,
    ffi.Pointer<wire_MnemonicType> mnemonic,
  ) {
    return _wire_resend_mnemonic(
      port_,
      mnemonic,
    );
  }

  late final _wire_resend_mnemonicPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_MnemonicType>)>>('wire_resend_mnemonic');
  late final _wire_resend_mnemonic = _wire_resend_mnemonicPtr
      .asFunction<void Function(int, ffi.Pointer<wire_MnemonicType>)>();

  void wire_nt_generate_key(
    int port_,
    ffi.Pointer<wire_MnemonicType> account_type,
  ) {
    return _wire_nt_generate_key(
      port_,
      account_type,
    );
  }

  late final _wire_nt_generate_keyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_MnemonicType>)>>('wire_nt_generate_key');
  late final _wire_nt_generate_key = _wire_nt_generate_keyPtr
      .asFunction<void Function(int, ffi.Pointer<wire_MnemonicType>)>();

  void wire_nt_get_hints(
    int port_,
    ffi.Pointer<wire_uint_8_list> input,
  ) {
    return _wire_nt_get_hints(
      port_,
      input,
    );
  }

  late final _wire_nt_get_hintsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_nt_get_hints');
  late final _wire_nt_get_hints = _wire_nt_get_hintsPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_nt_derive_from_phrase(
    int port_,
    ffi.Pointer<wire_uint_8_list> phrase,
    ffi.Pointer<wire_MnemonicType> mnemonic_type,
  ) {
    return _wire_nt_derive_from_phrase(
      port_,
      phrase,
      mnemonic_type,
    );
  }

  late final _wire_nt_derive_from_phrasePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_MnemonicType>)>>('wire_nt_derive_from_phrase');
  late final _wire_nt_derive_from_phrase =
      _wire_nt_derive_from_phrasePtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_MnemonicType>)>();

  void wire_init_logger(
    int port_,
    int level,
    bool mobile_logger,
  ) {
    return _wire_init_logger(
      port_,
      level,
      mobile_logger,
    );
  }

  late final _wire_init_loggerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Int32, ffi.Bool)>>('wire_init_logger');
  late final _wire_init_logger =
      _wire_init_loggerPtr.asFunction<void Function(int, int, bool)>();

  void wire_create_log_stream(
    int port_,
  ) {
    return _wire_create_log_stream(
      port_,
    );
  }

  late final _wire_create_log_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_create_log_stream');
  late final _wire_create_log_stream =
      _wire_create_log_streamPtr.asFunction<void Function(int)>();

  void wire_init_caller(
    int port_,
  ) {
    return _wire_init_caller(
      port_,
    );
  }

  late final _wire_init_callerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_init_caller');
  late final _wire_init_caller =
      _wire_init_callerPtr.asFunction<void Function(int)>();

  void wire_call_send_result(
    int port_,
    ffi.Pointer<wire_uint_8_list> id,
    ffi.Pointer<wire_DynamicValue> value,
  ) {
    return _wire_call_send_result(
      port_,
      id,
      value,
    );
  }

  late final _wire_call_send_resultPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_DynamicValue>)>>('wire_call_send_result');
  late final _wire_call_send_result = _wire_call_send_resultPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_DynamicValue>)>();

  void wire_simple_log(
    int port_,
    ffi.Pointer<wire_uint_8_list> string,
  ) {
    return _wire_simple_log(
      port_,
      string,
    );
  }

  late final _wire_simple_logPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_simple_log');
  late final _wire_simple_log = _wire_simple_logPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_simple_panic(
    int port_,
  ) {
    return _wire_simple_panic(
      port_,
    );
  }

  late final _wire_simple_panicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_simple_panic');
  late final _wire_simple_panic =
      _wire_simple_panicPtr.asFunction<void Function(int)>();

  WireSyncReturn wire_simple_adder_sync(
    int a,
    int b,
  ) {
    return _wire_simple_adder_sync(
      a,
      b,
    );
  }

  late final _wire_simple_adder_syncPtr = _lookup<
          ffi.NativeFunction<WireSyncReturn Function(ffi.Int32, ffi.Int32)>>(
      'wire_simple_adder_sync');
  late final _wire_simple_adder_sync = _wire_simple_adder_syncPtr
      .asFunction<WireSyncReturn Function(int, int)>();

  void wire_simple_adder(
    int port_,
    int a,
    int b,
  ) {
    return _wire_simple_adder(
      port_,
      a,
      b,
    );
  }

  late final _wire_simple_adderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Int32, ffi.Int32)>>('wire_simple_adder');
  late final _wire_simple_adder =
      _wire_simple_adderPtr.asFunction<void Function(int, int, int)>();

  void wire_stub_dv(
    int port_,
  ) {
    return _wire_stub_dv(
      port_,
    );
  }

  late final _wire_stub_dvPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_stub_dv');
  late final _wire_stub_dv = _wire_stub_dvPtr.asFunction<void Function(int)>();

  void wire_stub_dcs(
    int port_,
  ) {
    return _wire_stub_dcs(
      port_,
    );
  }

  late final _wire_stub_dcsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_stub_dcs');
  late final _wire_stub_dcs =
      _wire_stub_dcsPtr.asFunction<void Function(int)>();

  void wire_simple_call_dart(
    int port_,
  ) {
    return _wire_simple_call_dart(
      port_,
    );
  }

  late final _wire_simple_call_dartPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_simple_call_dart');
  late final _wire_simple_call_dart =
      _wire_simple_call_dartPtr.asFunction<void Function(int)>();

  void wire_stub_call_dart(
    int port_,
    ffi.Pointer<wire_DartCallStub> stub,
  ) {
    return _wire_stub_call_dart(
      port_,
      stub,
    );
  }

  late final _wire_stub_call_dartPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_DartCallStub>)>>('wire_stub_call_dart');
  late final _wire_stub_call_dart = _wire_stub_call_dartPtr
      .asFunction<void Function(int, ffi.Pointer<wire_DartCallStub>)>();

  void wire_simple_call_func0(
    int port_,
    bool need_result,
  ) {
    return _wire_simple_call_func0(
      port_,
      need_result,
    );
  }

  late final _wire_simple_call_func0Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Bool)>>(
          'wire_simple_call_func0');
  late final _wire_simple_call_func0 =
      _wire_simple_call_func0Ptr.asFunction<void Function(int, bool)>();

  void wire_simple_call_func1(
    int port_,
    bool need_result,
  ) {
    return _wire_simple_call_func1(
      port_,
      need_result,
    );
  }

  late final _wire_simple_call_func1Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Bool)>>(
          'wire_simple_call_func1');
  late final _wire_simple_call_func1 =
      _wire_simple_call_func1Ptr.asFunction<void Function(int, bool)>();

  void wire_simple_call_func2(
    int port_,
  ) {
    return _wire_simple_call_func2(
      port_,
    );
  }

  late final _wire_simple_call_func2Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_simple_call_func2');
  late final _wire_simple_call_func2 =
      _wire_simple_call_func2Ptr.asFunction<void Function(int)>();

  void wire_new__static_method__MyClass(
    int port_,
    int a,
  ) {
    return _wire_new__static_method__MyClass(
      port_,
      a,
    );
  }

  late final _wire_new__static_method__MyClassPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32)>>(
          'wire_new__static_method__MyClass');
  late final _wire_new__static_method__MyClass =
      _wire_new__static_method__MyClassPtr
          .asFunction<void Function(int, int)>();

  void wire_my_format__method__MyClass(
    int port_,
    ffi.Pointer<wire_MyClass> that,
  ) {
    return _wire_my_format__method__MyClass(
      port_,
      that,
    );
  }

  late final _wire_my_format__method__MyClassPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_MyClass>)>>('wire_my_format__method__MyClass');
  late final _wire_my_format__method__MyClass =
      _wire_my_format__method__MyClassPtr
          .asFunction<void Function(int, ffi.Pointer<wire_MyClass>)>();

  void wire_new__static_method__CallerTestClass(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_hash,
    int value,
  ) {
    return _wire_new__static_method__CallerTestClass(
      port_,
      instance_hash,
      value,
    );
  }

  late final _wire_new__static_method__CallerTestClassPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Int32)>>('wire_new__static_method__CallerTestClass');
  late final _wire_new__static_method__CallerTestClass =
      _wire_new__static_method__CallerTestClassPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>, int)>();

  void wire_call_some_func__method__CallerTestClass(
    int port_,
    ffi.Pointer<wire_CallerTestClass> that,
  ) {
    return _wire_call_some_func__method__CallerTestClass(
      port_,
      that,
    );
  }

  late final _wire_call_some_func__method__CallerTestClassPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_CallerTestClass>)>>(
      'wire_call_some_func__method__CallerTestClass');
  late final _wire_call_some_func__method__CallerTestClass =
      _wire_call_some_func__method__CallerTestClassPtr
          .asFunction<void Function(int, ffi.Pointer<wire_CallerTestClass>)>();

  ffi.Pointer<wire_CallerTestClass> new_box_autoadd_caller_test_class_0() {
    return _new_box_autoadd_caller_test_class_0();
  }

  late final _new_box_autoadd_caller_test_class_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_CallerTestClass> Function()>>(
          'new_box_autoadd_caller_test_class_0');
  late final _new_box_autoadd_caller_test_class_0 =
      _new_box_autoadd_caller_test_class_0Ptr
          .asFunction<ffi.Pointer<wire_CallerTestClass> Function()>();

  ffi.Pointer<wire_DartCallStub> new_box_autoadd_dart_call_stub_0() {
    return _new_box_autoadd_dart_call_stub_0();
  }

  late final _new_box_autoadd_dart_call_stub_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_DartCallStub> Function()>>(
          'new_box_autoadd_dart_call_stub_0');
  late final _new_box_autoadd_dart_call_stub_0 =
      _new_box_autoadd_dart_call_stub_0Ptr
          .asFunction<ffi.Pointer<wire_DartCallStub> Function()>();

  ffi.Pointer<wire_DynamicValue> new_box_autoadd_dynamic_value_0() {
    return _new_box_autoadd_dynamic_value_0();
  }

  late final _new_box_autoadd_dynamic_value_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_DynamicValue> Function()>>(
          'new_box_autoadd_dynamic_value_0');
  late final _new_box_autoadd_dynamic_value_0 =
      _new_box_autoadd_dynamic_value_0Ptr
          .asFunction<ffi.Pointer<wire_DynamicValue> Function()>();

  ffi.Pointer<wire_MnemonicType> new_box_autoadd_mnemonic_type_0() {
    return _new_box_autoadd_mnemonic_type_0();
  }

  late final _new_box_autoadd_mnemonic_type_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_MnemonicType> Function()>>(
          'new_box_autoadd_mnemonic_type_0');
  late final _new_box_autoadd_mnemonic_type_0 =
      _new_box_autoadd_mnemonic_type_0Ptr
          .asFunction<ffi.Pointer<wire_MnemonicType> Function()>();

  ffi.Pointer<wire_MyClass> new_box_autoadd_my_class_0() {
    return _new_box_autoadd_my_class_0();
  }

  late final _new_box_autoadd_my_class_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_MyClass> Function()>>(
          'new_box_autoadd_my_class_0');
  late final _new_box_autoadd_my_class_0 = _new_box_autoadd_my_class_0Ptr
      .asFunction<ffi.Pointer<wire_MyClass> Function()>();

  ffi.Pointer<wire_list_dynamic_named_value> new_list_dynamic_named_value_0(
    int len,
  ) {
    return _new_list_dynamic_named_value_0(
      len,
    );
  }

  late final _new_list_dynamic_named_value_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_dynamic_named_value> Function(
              ffi.Int32)>>('new_list_dynamic_named_value_0');
  late final _new_list_dynamic_named_value_0 =
      _new_list_dynamic_named_value_0Ptr.asFunction<
          ffi.Pointer<wire_list_dynamic_named_value> Function(int)>();

  ffi.Pointer<wire_list_dynamic_value> new_list_dynamic_value_0(
    int len,
  ) {
    return _new_list_dynamic_value_0(
      len,
    );
  }

  late final _new_list_dynamic_value_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_dynamic_value> Function(
              ffi.Int32)>>('new_list_dynamic_value_0');
  late final _new_list_dynamic_value_0 = _new_list_dynamic_value_0Ptr
      .asFunction<ffi.Pointer<wire_list_dynamic_value> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_U32() {
    return _inflate_DynamicValue_U32();
  }

  late final _inflate_DynamicValue_U32Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_U32');
  late final _inflate_DynamicValue_U32 = _inflate_DynamicValue_U32Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_I32() {
    return _inflate_DynamicValue_I32();
  }

  late final _inflate_DynamicValue_I32Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_I32');
  late final _inflate_DynamicValue_I32 = _inflate_DynamicValue_I32Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_U64() {
    return _inflate_DynamicValue_U64();
  }

  late final _inflate_DynamicValue_U64Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_U64');
  late final _inflate_DynamicValue_U64 = _inflate_DynamicValue_U64Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_I64() {
    return _inflate_DynamicValue_I64();
  }

  late final _inflate_DynamicValue_I64Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_I64');
  late final _inflate_DynamicValue_I64 = _inflate_DynamicValue_I64Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_F32() {
    return _inflate_DynamicValue_F32();
  }

  late final _inflate_DynamicValue_F32Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_F32');
  late final _inflate_DynamicValue_F32 = _inflate_DynamicValue_F32Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_F64() {
    return _inflate_DynamicValue_F64();
  }

  late final _inflate_DynamicValue_F64Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_F64');
  late final _inflate_DynamicValue_F64 = _inflate_DynamicValue_F64Ptr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_String() {
    return _inflate_DynamicValue_String();
  }

  late final _inflate_DynamicValue_StringPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_String');
  late final _inflate_DynamicValue_String = _inflate_DynamicValue_StringPtr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_MegaStruct() {
    return _inflate_DynamicValue_MegaStruct();
  }

  late final _inflate_DynamicValue_MegaStructPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_MegaStruct');
  late final _inflate_DynamicValue_MegaStruct =
      _inflate_DynamicValue_MegaStructPtr
          .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<DynamicValueKind> inflate_DynamicValue_Error() {
    return _inflate_DynamicValue_Error();
  }

  late final _inflate_DynamicValue_ErrorPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DynamicValueKind> Function()>>(
          'inflate_DynamicValue_Error');
  late final _inflate_DynamicValue_Error = _inflate_DynamicValue_ErrorPtr
      .asFunction<ffi.Pointer<DynamicValueKind> Function()>();

  ffi.Pointer<MnemonicTypeKind> inflate_MnemonicType_Labs() {
    return _inflate_MnemonicType_Labs();
  }

  late final _inflate_MnemonicType_LabsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<MnemonicTypeKind> Function()>>(
          'inflate_MnemonicType_Labs');
  late final _inflate_MnemonicType_Labs = _inflate_MnemonicType_LabsPtr
      .asFunction<ffi.Pointer<MnemonicTypeKind> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_MnemonicType_Legacy extends ffi.Opaque {}

class wire_MnemonicType_Labs extends ffi.Struct {
  @ffi.Uint16()
  external int field0;
}

class MnemonicTypeKind extends ffi.Union {
  external ffi.Pointer<wire_MnemonicType_Legacy> Legacy;

  external ffi.Pointer<wire_MnemonicType_Labs> Labs;
}

class wire_MnemonicType extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<MnemonicTypeKind> kind;
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_DynamicValue_U32 extends ffi.Struct {
  @ffi.Uint32()
  external int field0;
}

class wire_DynamicValue_I32 extends ffi.Struct {
  @ffi.Int32()
  external int field0;
}

class wire_DynamicValue_U64 extends ffi.Struct {
  @ffi.Uint64()
  external int field0;
}

class wire_DynamicValue_I64 extends ffi.Struct {
  @ffi.Int64()
  external int field0;
}

class wire_DynamicValue_F32 extends ffi.Struct {
  @ffi.Float()
  external double field0;
}

class wire_DynamicValue_F64 extends ffi.Struct {
  @ffi.Double()
  external double field0;
}

class wire_DynamicValue_String extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_DynamicValue_MegaStruct extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_DynamicValue_Error extends ffi.Struct {
  @ffi.Int32()
  external int field0;
}

class wire_DynamicValue_None extends ffi.Opaque {}

class DynamicValueKind extends ffi.Union {
  external ffi.Pointer<wire_DynamicValue_U32> U32;

  external ffi.Pointer<wire_DynamicValue_I32> I32;

  external ffi.Pointer<wire_DynamicValue_U64> U64;

  external ffi.Pointer<wire_DynamicValue_I64> I64;

  external ffi.Pointer<wire_DynamicValue_F32> F32;

  external ffi.Pointer<wire_DynamicValue_F64> F64;

  external ffi.Pointer<wire_DynamicValue_String> String;

  external ffi.Pointer<wire_DynamicValue_MegaStruct> MegaStruct;

  external ffi.Pointer<wire_DynamicValue_Error> Error;

  external ffi.Pointer<wire_DynamicValue_None> None;
}

class wire_DynamicValue extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<DynamicValueKind> kind;
}

class wire_list_dynamic_value extends ffi.Struct {
  external ffi.Pointer<wire_DynamicValue> ptr;

  @ffi.Int32()
  external int len;
}

class wire_DynamicNamedValue extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_DynamicValue> value;
}

class wire_list_dynamic_named_value extends ffi.Struct {
  external ffi.Pointer<wire_DynamicNamedValue> ptr;

  @ffi.Int32()
  external int len;
}

class wire_DartCallStub extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> instance_hash;

  external ffi.Pointer<wire_uint_8_list> fn_name;

  external ffi.Pointer<wire_list_dynamic_value> args;

  external ffi.Pointer<wire_list_dynamic_named_value> named_args;
}

class wire_MyClass extends ffi.Struct {
  @ffi.Int32()
  external int val;
}

class wire_CallerTestClass extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> instance_hash;

  @ffi.Int32()
  external int value;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
