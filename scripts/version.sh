#!/bin/bash

CURR_VERSION=nekoton_bridge-v`awk '/^version: /{print $2}' packages/nekoton_bridge/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_nekoton_bridge/ios/flutter_nekoton_bridge.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_nekoton_bridge/macos/flutter_nekoton_bridge.podspec
rm packages/flutter_nekoton_bridge/macos/*.bak packages/flutter_nekoton_bridge/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_nekoton_bridge/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_nekoton_bridge/$CMAKE_PLATFORM/*.bak
done

# Copy readme
cp -f README.md packages/flutter_nekoton_bridge/README.md

git add packages/flutter_nekoton_bridge/
