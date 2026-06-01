// Under Swift Package Manager the FFI header is exposed as a separate C module.
// CocoaPods builds everything as a single module, so the import is not needed there.
#if SWIFT_PACKAGE
import flutter_nekoton_bridge_ffi
#endif

public func dummyMethodToEnforceBundling() -> Int64 {
  return dummy_method_to_enforce_bundling()
}
let dummyVar = dummyMethodToEnforceBundling();
