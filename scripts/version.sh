#!/bin/bash
set -e
set -o pipefail

CURR_VERSION=nekoton_bridge-v`awk '/^version: /{print $2}' packages/nekoton_bridge/pubspec.yaml`

# Apply an in-place sed expression to a file only if it exists, cleaning up the
# `.bak` backup afterwards. Missing platform files (e.g. macos/linux/windows when
# a platform isn't checked in) are skipped with a notice instead of erroring.
patch_file() {
    local file="$1"
    local expr="$2"
    if [ -f "$file" ]; then
        sed -i.bak "$expr" "$file"
        rm -f "$file.bak"
    else
        echo "Skipping missing file: $file"
    fi
}

# iOS & macOS podspecs
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
patch_file packages/flutter_nekoton_bridge/ios/flutter_nekoton_bridge.podspec "1 s/.*/$APPLE_HEADER/"
patch_file packages/flutter_nekoton_bridge/macos/flutter_nekoton_bridge.podspec "1 s/.*/$APPLE_HEADER/"

# iOS Swift Package Manager
SPM_HEADER="let releaseTagName = \"$CURR_VERSION\" \/\/ generated; do not edit"
patch_file packages/flutter_nekoton_bridge/ios/flutter_nekoton_bridge/Package.swift "s/^let releaseTagName = .*/$SPM_HEADER/"

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    patch_file packages/flutter_nekoton_bridge/$CMAKE_PLATFORM/CMakeLists.txt "1 s/.*/$CMAKE_HEADER/"
done

# Copy readme
cp -f README.md packages/flutter_nekoton_bridge/README.md

git add packages/flutter_nekoton_bridge/
