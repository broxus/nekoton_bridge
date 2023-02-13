import 'dart:ffi';
import 'dart:io';

import 'package:nekoton_bridge/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

NekotonBridge createWrapperImpl(ExternalLibrary dylib) =>
    NekotonBridgeImpl(dylib);

DynamicLibrary createLibraryImpl() {
  const base = 'nekoton_bridge';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}
