#!/bin/bash
set -e
set -o pipefail

# Setup
BUILD_DIR=platform-build
mkdir -p $BUILD_DIR
cd $BUILD_DIR

# Build static libs
for TARGET in \
        aarch64-apple-ios x86_64-apple-ios aarch64-apple-ios-sim
do
    rustup target add $TARGET
    cargo build -r --target=$TARGET
done

# Create XCFramework zip
FRAMEWORK="NekotonBridge.xcframework"
LIBNAME=libflutter_nekoton_bridge.a
mkdir ios-sim-lipo
IOS_SIM_LIPO=ios-sim-lipo/$LIBNAME
lipo -create -output $IOS_SIM_LIPO \
        ../target/aarch64-apple-ios-sim/release/$LIBNAME \
        ../target/x86_64-apple-ios/release/$LIBNAME
xcodebuild -create-xcframework \
        -library $IOS_SIM_LIPO \
        -library ../target/aarch64-apple-ios/release/$LIBNAME \
        -output $FRAMEWORK
zip -r $FRAMEWORK.zip $FRAMEWORK

# Swift Package Manager integration:
# 1. Place the freshly built XCFramework inside the SwiftPM package so a local
#    build is preferred over downloading the release (mirrors the podspec).
# 2. Update the checksum of the remote binary target in Package.swift so it
#    matches the archive uploaded to the GitHub release.
SPM_PACKAGE_DIR=../packages/flutter_nekoton_bridge/ios/flutter_nekoton_bridge
rm -rf "$SPM_PACKAGE_DIR/$FRAMEWORK"
cp -R "$FRAMEWORK" "$SPM_PACKAGE_DIR/$FRAMEWORK"
bash ../scripts/spm-checksum.sh "$(pwd)/$FRAMEWORK.zip"

# Cleanup
rm -rf ios-sim-lipo $FRAMEWORK
