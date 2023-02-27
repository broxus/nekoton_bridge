// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.65.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

import 'dart:ffi' as ffi;

part 'encrypted_key_api.freezed.dart';

abstract class EncryptedKeyApi {
  /// Test func
  Future<MnemonicTypeG> resendMnemonic({required MnemonicTypeG mnemonic, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kResendMnemonicConstMeta;
}

@freezed
class MnemonicTypeG with _$MnemonicTypeG {
  const factory MnemonicTypeG.legacy() = MnemonicTypeG_Legacy;
  const factory MnemonicTypeG.labs(
    int field0,
  ) = MnemonicTypeG_Labs;
}

class EncryptedKeyApiImpl implements EncryptedKeyApi {
  final EncryptedKeyApiPlatform _platform;
  factory EncryptedKeyApiImpl(ExternalLibrary dylib) => EncryptedKeyApiImpl.raw(EncryptedKeyApiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory EncryptedKeyApiImpl.wasm(FutureOr<WasmModule> module) => EncryptedKeyApiImpl(module as ExternalLibrary);
  EncryptedKeyApiImpl.raw(this._platform);
  Future<MnemonicTypeG> resendMnemonic({required MnemonicTypeG mnemonic, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_mnemonic_type_g(mnemonic);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_resend_mnemonic(port_, arg0),
      parseSuccessData: _wire2api_mnemonic_type_g,
      constMeta: kResendMnemonicConstMeta,
      argValues: [
        mnemonic
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kResendMnemonicConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "resend_mnemonic",
        argNames: [
          "mnemonic"
        ],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  MnemonicTypeG _wire2api_mnemonic_type_g(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return MnemonicTypeG_Legacy();
      case 1:
        return MnemonicTypeG_Labs(
          _wire2api_u16(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  int _wire2api_u16(dynamic raw) {
    return raw as int;
  }
}

// Section: api2wire

@protected
int api2wire_u16(int raw) {
  return raw;
}
// Section: finalizer

class EncryptedKeyApiPlatform extends FlutterRustBridgeBase<EncryptedKeyApiWire> {
  EncryptedKeyApiPlatform(ffi.DynamicLibrary dylib) : super(EncryptedKeyApiWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_MnemonicTypeG> api2wire_box_autoadd_mnemonic_type_g(MnemonicTypeG raw) {
    final ptr = inner.new_box_autoadd_mnemonic_type_g_2();
    _api_fill_to_wire_mnemonic_type_g(raw, ptr.ref);
    return ptr;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_mnemonic_type_g(MnemonicTypeG apiObj, ffi.Pointer<wire_MnemonicTypeG> wireObj) {
    _api_fill_to_wire_mnemonic_type_g(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_mnemonic_type_g(MnemonicTypeG apiObj, wire_MnemonicTypeG wireObj) {
    if (apiObj is MnemonicTypeG_Legacy) {
      wireObj.tag = 0;
      return;
    }
    if (apiObj is MnemonicTypeG_Labs) {
      var pre_field0 = api2wire_u16(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_MnemonicTypeG_Labs();
      wireObj.kind.ref.Labs.ref.field0 = pre_field0;
      return;
    }
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class EncryptedKeyApiWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  EncryptedKeyApiWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  EncryptedKeyApiWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>('get_dart_object');
  late final _get_dart_object = _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>('drop_dart_object');
  late final _drop_dart_object = _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr = _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>('new_dart_opaque');
  late final _new_dart_opaque = _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr = _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>('init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_resend_mnemonic(
    int port_,
    ffi.Pointer<wire_MnemonicTypeG> mnemonic,
  ) {
    return _wire_resend_mnemonic(
      port_,
      mnemonic,
    );
  }

  late final _wire_resend_mnemonicPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_MnemonicTypeG>)>>('wire_resend_mnemonic');
  late final _wire_resend_mnemonic = _wire_resend_mnemonicPtr.asFunction<void Function(int, ffi.Pointer<wire_MnemonicTypeG>)>();

  ffi.Pointer<wire_MnemonicTypeG> new_box_autoadd_mnemonic_type_g_2() {
    return _new_box_autoadd_mnemonic_type_g_2();
  }

  late final _new_box_autoadd_mnemonic_type_g_2Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>>('new_box_autoadd_mnemonic_type_g_2');
  late final _new_box_autoadd_mnemonic_type_g_2 = _new_box_autoadd_mnemonic_type_g_2Ptr.asFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>();

  ffi.Pointer<MnemonicTypeGKind> inflate_MnemonicTypeG_Labs() {
    return _inflate_MnemonicTypeG_Labs();
  }

  late final _inflate_MnemonicTypeG_LabsPtr = _lookup<ffi.NativeFunction<ffi.Pointer<MnemonicTypeGKind> Function()>>('inflate_MnemonicTypeG_Labs');
  late final _inflate_MnemonicTypeG_Labs = _inflate_MnemonicTypeG_LabsPtr.asFunction<ffi.Pointer<MnemonicTypeGKind> Function()>();

  ffi.Pointer<wire_MyClass> new_box_autoadd_my_class_0() {
    return _new_box_autoadd_my_class_0();
  }

  late final _new_box_autoadd_my_class_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_MyClass> Function()>>('new_box_autoadd_my_class_0');
  late final _new_box_autoadd_my_class_0 = _new_box_autoadd_my_class_0Ptr.asFunction<ffi.Pointer<wire_MyClass> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr = _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>('free_WireSyncReturn');
  late final _free_WireSyncReturn = _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_MnemonicTypeG_Legacy extends ffi.Opaque {}

class wire_MnemonicTypeG_Labs extends ffi.Struct {
  @ffi.Uint16()
  external int field0;
}

class MnemonicTypeGKind extends ffi.Union {
  external ffi.Pointer<wire_MnemonicTypeG_Legacy> Legacy;

  external ffi.Pointer<wire_MnemonicTypeG_Labs> Labs;
}

class wire_MnemonicTypeG extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<MnemonicTypeGKind> kind;
}

class wire_MyClass extends ffi.Struct {
  @ffi.Int32()
  external int val;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
