import 'package:meta/meta.dart';

import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';

/// Support function that allows create library not in [createLib] but
/// in [createWrapper] allowing us to mock bridge wrapper via [mockWrapper].
typedef ExternalLibraryCreator = ExternalLibrary Function();

NekotonBridge? _wrapper;

NekotonBridge createWrapper(ExternalLibraryCreator creator) {
  _wrapper ??= createWrapperImpl(creator());
  return _wrapper!;
}

/// Mock bridge library for test.
/// To setup wrapper, put [mock] instance to allow [createLib] to avoid creating
/// native library.
@visibleForTesting
void mockWrapper(NekotonBridge mock) {
  _wrapper = mock;
}

NekotonBridge createLib() => createWrapper(createLibraryImpl);
