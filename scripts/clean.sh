#!/bin/bash

rm -rdf platform-build/{,.[!.],..?}*
rm -rdf target/{,.[!.],..?}*

rm -rdf packages/flutter_nekoton_bridge/android/.cxx
rm -rdf packages/flutter_nekoton_bridge/android/nekoton_bridge*.tar.gz
rm -rdf packages/flutter_nekoton_bridge/android/src/main/jniLibs/*


rm -rdf packages/flutter_nekoton_bridge/ios/Frameworks/NekotonBridge.xcframework
rm -rdf packages/flutter_nekoton_bridge/ios/Frameworks/nekoton_bridge*.zip


cd packages/flutter_nekoton_bridge
flutter clean

cd example
flutter clean
