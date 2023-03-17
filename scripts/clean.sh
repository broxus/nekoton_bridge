#!/bin/bash

# Remove build files generated code
find . -type f -name "*_generated.*" -delete
find . -type f -name "*.freezed.dart" -delete
find . -type f -name "*.g.dart" -delete
rm -rdf packages/nekoton_bridge/native/src/merged.rs
rm -rdf packages/flutter_nekoton_bridge/ios/Classes/frb.h

# Remove build files (output)
rm -rdf platform-build/{,.[!.],..?}*
rm -rdf target/{,.[!.],..?}*

# Remove build files (working directory, android)
rm -rdf packages/flutter_nekoton_bridge/android/.cxx
rm -rdf packages/flutter_nekoton_bridge/android/nekoton_bridge*.tar.gz
rm -rdf packages/flutter_nekoton_bridge/android/src/main/jniLibs/*

# Remove build files (working directory, ios)
rm -rdf packages/flutter_nekoton_bridge/ios/Frameworks/NekotonBridge.xcframework
rm -rdf packages/flutter_nekoton_bridge/ios/Frameworks/nekoton_bridge*.zip

# Flutter clean for package
cd packages/flutter_nekoton_bridge
flutter clean

# Flutter clean for example app
cd example
flutter clean
