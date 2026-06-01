// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

// These values are templated by the build scripts — do not edit manually.
// `releaseTagName` is updated by `scripts/version.sh`.
// `releaseChecksum` is updated by `scripts/build-ios.sh` after the XCFramework
// archive is produced (it must match the archive uploaded to the GitHub release).
let releaseTagName = "nekoton_bridge-v5.7.0-dev.0" // generated; do not edit
let releaseChecksum = "d9f0356194d2de8066c5356f7c80b9cb28a7cf849e416d2262c103f1d74ef50d"

// Name of the prebuilt XCFramework that ships the Rust static library.
let frameworkName = "NekotonBridge.xcframework"
let remoteZipName = "\(frameworkName).zip"

// The directory that contains this manifest.
let packageDir = URL(fileURLWithPath: #filePath).deletingLastPathComponent()

// Remote location of the released archive. Mirrors the CocoaPods podspec and can
// be overridden via the `NEKOTON_BRIDGE_URL` environment variable.
let downloadUrl = ProcessInfo.processInfo.environment["NEKOTON_BRIDGE_URL"]
    ?? "https://github.com/broxus/nekoton_bridge/releases/download/\(releaseTagName)/\(remoteZipName)"

// SwiftPM evaluates this manifest inside a sandbox without network access and
// without write access to the package directory, so (unlike the CocoaPods
// `prepare_command`) we cannot download/unzip here. Instead:
//   * If a locally built XCFramework is present (placed by `scripts/build-ios.sh`,
//     or extracted manually), it is used directly via a local binary target.
//     This mirrors the podspec's "prefer the local build artifact" behaviour.
//   * Otherwise SwiftPM downloads the released archive itself via a remote binary
//     target (this happens outside the manifest sandbox).
let localXCFramework = packageDir.appendingPathComponent(frameworkName)
let hasLocalXCFramework = FileManager.default.fileExists(atPath: localXCFramework.path)

let binaryTarget: Target = hasLocalXCFramework
    ? .binaryTarget(name: "NekotonBridge", path: frameworkName)
    : .binaryTarget(name: "NekotonBridge", url: downloadUrl, checksum: releaseChecksum)

let package = Package(
    name: "flutter_nekoton_bridge",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        // The library name must use `-` instead of `_` per Flutter's plugin
        // Swift Package Manager guidance.
        .library(name: "flutter-nekoton-bridge", targets: ["flutter_nekoton_bridge"])
    ],
    targets: [
        // Prebuilt Rust static library shipped as an XCFramework.
        binaryTarget,
        // C module exposing the generated FFI header (`frb.h`).
        .target(
            name: "flutter_nekoton_bridge_ffi"
        ),
        // Swift target that forces the linker to keep the FFI symbols so they
        // remain resolvable from Dart via `dart:ffi`.
        .target(
            name: "flutter_nekoton_bridge",
            dependencies: [
                "flutter_nekoton_bridge_ffi",
                "NekotonBridge"
            ]
        )
    ]
)

