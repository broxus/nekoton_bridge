// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.66.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class NekotonBridgePlatform extends FlutterRustBridgeBase<NekotonBridgeWire>
    with FlutterRustBridgeSetupMixin {
  NekotonBridgePlatform(FutureOr<WasmModule> dylib)
      : super(NekotonBridgeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_box_autoadd_dart_call_stub(DartCallStub raw) {
    return api2wire_dart_call_stub(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_dynamic_value(DynamicValue raw) {
    return api2wire_dynamic_value(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_mnemonic_type(MnemonicType raw) {
    return api2wire_mnemonic_type(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_my_class(MyClass raw) {
    return api2wire_my_class(raw);
  }

  @protected
  List<dynamic> api2wire_dart_call_stub(DartCallStub raw) {
    return [
      api2wire_String(raw.fnName),
      api2wire_list_dynamic_value(raw.args),
      api2wire_list_dynamic_named_value(raw.namedArgs)
    ];
  }

  @protected
  List<dynamic> api2wire_dynamic_named_value(DynamicNamedValue raw) {
    return [
      api2wire_String(raw.name),
      api2wire_opt_box_autoadd_dynamic_value(raw.value)
    ];
  }

  @protected
  List<dynamic> api2wire_dynamic_value(DynamicValue raw) {
    if (raw is DynamicValue_U32) {
      return [0, api2wire_u32(raw.field0)];
    }
    if (raw is DynamicValue_I32) {
      return [1, api2wire_i32(raw.field0)];
    }
    if (raw is DynamicValue_U64) {
      return [2, api2wire_u64(raw.field0)];
    }
    if (raw is DynamicValue_I64) {
      return [3, api2wire_i64(raw.field0)];
    }
    if (raw is DynamicValue_F32) {
      return [4, api2wire_f32(raw.field0)];
    }
    if (raw is DynamicValue_F64) {
      return [5, api2wire_f64(raw.field0)];
    }
    if (raw is DynamicValue_String) {
      return [6, api2wire_String(raw.field0)];
    }
    if (raw is DynamicValue_MegaStruct) {
      return [7, api2wire_String(raw.field0)];
    }
    if (raw is DynamicValue_None) {
      return [8];
    }

    throw Exception('unreachable');
  }

  @protected
  Object api2wire_i64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  List<dynamic> api2wire_list_dynamic_named_value(List<DynamicNamedValue> raw) {
    return raw.map(api2wire_dynamic_named_value).toList();
  }

  @protected
  List<dynamic> api2wire_list_dynamic_value(List<DynamicValue> raw) {
    return raw.map(api2wire_dynamic_value).toList();
  }

  @protected
  List<dynamic> api2wire_mnemonic_type(MnemonicType raw) {
    if (raw is MnemonicType_Legacy) {
      return [0];
    }
    if (raw is MnemonicType_Labs) {
      return [1, api2wire_u16(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  List<dynamic> api2wire_my_class(MyClass raw) {
    return [api2wire_i32(raw.val)];
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_dynamic_value(DynamicValue? raw) {
    return raw == null ? null : api2wire_box_autoadd_dynamic_value(raw);
  }

  @protected
  Object api2wire_u64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external NekotonBridgeWasmModule get wasmModule;

@JS()
@anonymous
class NekotonBridgeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external NekotonBridgeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_resend_mnemonic(
      NativePortType port_, List<dynamic> mnemonic);

  external dynamic /* void */ wire_nt_generate_key(
      NativePortType port_, List<dynamic> account_type);

  external dynamic /* void */ wire_nt_get_hints(
      NativePortType port_, String input);

  external dynamic /* void */ wire_nt_derive_from_phrase(
      NativePortType port_, String phrase, List<dynamic> mnemonic_type);

  external dynamic /* void */ wire_init_logger(
      NativePortType port_, int level, bool mobile_logger);

  external dynamic /* void */ wire_create_log_stream(NativePortType port_);

  external dynamic /* void */ wire_init_caller(NativePortType port_);

  external dynamic /* void */ wire_call_send_result(
      NativePortType port_, String id, List<dynamic> value);

  external dynamic /* void */ wire_simple_log(
      NativePortType port_, String string);

  external dynamic /* void */ wire_simple_panic(NativePortType port_);

  external dynamic /* int */ wire_simple_adder_sync(int a, int b);

  external dynamic /* void */ wire_simple_adder(
      NativePortType port_, int a, int b);

  external dynamic /* void */ wire_stub_dv(NativePortType port_);

  external dynamic /* void */ wire_stub_dcs(NativePortType port_);

  external dynamic /* void */ wire_simple_call_dart(NativePortType port_);

  external dynamic /* void */ wire_stub_call_dart(
      NativePortType port_, List<dynamic> stub);

  external dynamic /* void */ wire_simple_call_func0(
      NativePortType port_, bool need_result);

  external dynamic /* void */ wire_simple_call_func1(
      NativePortType port_, bool need_result);

  external dynamic /* void */ wire_simple_call_func2(NativePortType port_);

  external dynamic /* void */ wire_new__static_method__MyClass(
      NativePortType port_, int a);

  external dynamic /* void */ wire_my_format__method__MyClass(
      NativePortType port_, List<dynamic> that);
}

// Section: WASM wire connector

class NekotonBridgeWire
    extends FlutterRustBridgeWasmWireBase<NekotonBridgeWasmModule> {
  NekotonBridgeWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<NekotonBridgeWasmModule>(module));

  void wire_resend_mnemonic(NativePortType port_, List<dynamic> mnemonic) =>
      wasmModule.wire_resend_mnemonic(port_, mnemonic);

  void wire_nt_generate_key(NativePortType port_, List<dynamic> account_type) =>
      wasmModule.wire_nt_generate_key(port_, account_type);

  void wire_nt_get_hints(NativePortType port_, String input) =>
      wasmModule.wire_nt_get_hints(port_, input);

  void wire_nt_derive_from_phrase(
          NativePortType port_, String phrase, List<dynamic> mnemonic_type) =>
      wasmModule.wire_nt_derive_from_phrase(port_, phrase, mnemonic_type);

  void wire_init_logger(NativePortType port_, int level, bool mobile_logger) =>
      wasmModule.wire_init_logger(port_, level, mobile_logger);

  void wire_create_log_stream(NativePortType port_) =>
      wasmModule.wire_create_log_stream(port_);

  void wire_init_caller(NativePortType port_) =>
      wasmModule.wire_init_caller(port_);

  void wire_call_send_result(
          NativePortType port_, String id, List<dynamic> value) =>
      wasmModule.wire_call_send_result(port_, id, value);

  void wire_simple_log(NativePortType port_, String string) =>
      wasmModule.wire_simple_log(port_, string);

  void wire_simple_panic(NativePortType port_) =>
      wasmModule.wire_simple_panic(port_);

  dynamic /* int */ wire_simple_adder_sync(int a, int b) =>
      wasmModule.wire_simple_adder_sync(a, b);

  void wire_simple_adder(NativePortType port_, int a, int b) =>
      wasmModule.wire_simple_adder(port_, a, b);

  void wire_stub_dv(NativePortType port_) => wasmModule.wire_stub_dv(port_);

  void wire_stub_dcs(NativePortType port_) => wasmModule.wire_stub_dcs(port_);

  void wire_simple_call_dart(NativePortType port_) =>
      wasmModule.wire_simple_call_dart(port_);

  void wire_stub_call_dart(NativePortType port_, List<dynamic> stub) =>
      wasmModule.wire_stub_call_dart(port_, stub);

  void wire_simple_call_func0(NativePortType port_, bool need_result) =>
      wasmModule.wire_simple_call_func0(port_, need_result);

  void wire_simple_call_func1(NativePortType port_, bool need_result) =>
      wasmModule.wire_simple_call_func1(port_, need_result);

  void wire_simple_call_func2(NativePortType port_) =>
      wasmModule.wire_simple_call_func2(port_);

  void wire_new__static_method__MyClass(NativePortType port_, int a) =>
      wasmModule.wire_new__static_method__MyClass(port_, a);

  void wire_my_format__method__MyClass(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_my_format__method__MyClass(port_, that);
}
