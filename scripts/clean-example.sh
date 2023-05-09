#!/bin/bash

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
