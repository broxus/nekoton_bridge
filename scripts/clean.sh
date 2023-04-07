#!/bin/bash

# Remove build files generated code
find . -type f -name "*_generated.*" -delete
find . -type f -name "*.freezed.dart" -delete
find . -type f -name "*.g.dart" -delete
find . -type f -name "*.reflectable.dart" -delete
rm -rdf packages/nekoton_bridge/native/src/merged.rs
rm -rdf packages/flutter_nekoton_bridge/ios/Classes/frb.h
rm -rdf packages/flutter_nekoton_bridge/macos/Classes/frb.h

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

# Remove build files (working directory, macos)
rm -rdf packages/flutter_nekoton_bridge/macos/Frameworks/NekotonBridge.xcframework
rm -rdf packages/flutter_nekoton_bridge/macos/Frameworks/nekoton_bridge*.zip

# Remove js-related files
rm -rdf packages/flutter_nekoton_bridge/js/node_modules/
find packages/flutter_nekoton_bridge/assets/js/ -type f -not -name '.gitignore' -delete

# Flutter clean for package
cd packages/flutter_nekoton_bridge
flutter clean

# Flutter clean for example app
cd example
flutter clean
