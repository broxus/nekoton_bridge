// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.65.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:ffi' as ffi;

abstract class ModelsApi {}

class ModelsApiImpl implements ModelsApi {
  final ModelsApiPlatform _platform;
  factory ModelsApiImpl(ExternalLibrary dylib) => ModelsApiImpl.raw(ModelsApiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory ModelsApiImpl.wasm(FutureOr<WasmModule> module) => ModelsApiImpl(module as ExternalLibrary);
  ModelsApiImpl.raw(this._platform);
  void dispose() {
    _platform.dispose();
  }
// Section: wire2api
}

// Section: api2wire

// Section: finalizer

class ModelsApiPlatform extends FlutterRustBridgeBase<ModelsApiWire> {
  ModelsApiPlatform(ffi.DynamicLibrary dylib) : super(ModelsApiWire(dylib));

// Section: api2wire

// Section: finalizer

// Section: api_fill_to_wire
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class ModelsApiWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ModelsApiWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ModelsApiWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

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

  ffi.Pointer<wire_MnemonicTypeG> new_box_autoadd_mnemonic_type_g_4() {
    return _new_box_autoadd_mnemonic_type_g_4();
  }

  late final _new_box_autoadd_mnemonic_type_g_4Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>>('new_box_autoadd_mnemonic_type_g_4');
  late final _new_box_autoadd_mnemonic_type_g_4 = _new_box_autoadd_mnemonic_type_g_4Ptr.asFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>();

  ffi.Pointer<wire_MnemonicTypeG> new_box_autoadd_mnemonic_type_g_2() {
    return _new_box_autoadd_mnemonic_type_g_2();
  }

  late final _new_box_autoadd_mnemonic_type_g_2Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>>('new_box_autoadd_mnemonic_type_g_2');
  late final _new_box_autoadd_mnemonic_type_g_2 = _new_box_autoadd_mnemonic_type_g_2Ptr.asFunction<ffi.Pointer<wire_MnemonicTypeG> Function()>();

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
