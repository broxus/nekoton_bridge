import 'package:nekoton_bridge/src/bridge_generated.dart';

/// Represents the external library for nekoton_bridge
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

NekotonBridge createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();
