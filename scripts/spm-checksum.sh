#!/bin/bash
set -e
set -o pipefail

# Embeds the SHA-256 checksum of the NekotonBridge XCFramework archive into the
# SwiftPM manifest (Package.swift) so the remote `binaryTarget(url:checksum:)`
# matches the archive uploaded to the GitHub release.
#
# SwiftPM's binary-target checksum is the plain SHA-256 of the `.zip` file, which
# is exactly what `swift package compute-checksum` produces.
#
# Usage:
#   spm-checksum.sh [path-to-local-zip]
#
# If a local zip is provided (and exists) it is used directly. Otherwise the
# archive is downloaded from the GitHub release matching the version found in
# packages/nekoton_bridge/pubspec.yaml. When downloading, the script retries
# until the asset becomes available, because the release archive may still be
# uploading from a parallel build job.

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

FRAMEWORK_ZIP="NekotonBridge.xcframework.zip"
PACKAGE_SWIFT="packages/flutter_nekoton_bridge/ios/flutter_nekoton_bridge/Package.swift"
VERSION="nekoton_bridge-v$(awk '/^version: /{print $2}' packages/nekoton_bridge/pubspec.yaml)"
URL="${NEKOTON_BRIDGE_URL:-https://github.com/broxus/nekoton_bridge/releases/download/$VERSION/$FRAMEWORK_ZIP}"

# How long to wait for the release asset to appear (download mode only).
# Defaults cover a slow `nekoton_bridge` CI build (~15-20 min, sometimes more):
# 10 attempts * 180s = up to 30 minutes.
MAX_ATTEMPTS="${SPM_CHECKSUM_MAX_ATTEMPTS:-10}"
RETRY_DELAY="${SPM_CHECKSUM_RETRY_DELAY:-180}"

LOCAL_ZIP="${1:-}"
TMP_DIR=""

if [ -n "$LOCAL_ZIP" ] && [ -f "$LOCAL_ZIP" ]; then
    ZIP_PATH="$LOCAL_ZIP"
else
    TMP_DIR="$(mktemp -d)"
    ZIP_PATH="$TMP_DIR/$FRAMEWORK_ZIP"
    echo "Downloading $URL"
    attempt=1
    until curl -fL --connect-timeout 15 "$URL" -o "$ZIP_PATH"; do
        if [ "$attempt" -ge "$MAX_ATTEMPTS" ]; then
            echo "Failed to download $URL after $attempt attempts." >&2
            rm -rf "$TMP_DIR"
            exit 1
        fi
        echo "Release asset not available yet (attempt $attempt/$MAX_ATTEMPTS); retrying in ${RETRY_DELAY}s..."
        attempt=$((attempt + 1))
        sleep "$RETRY_DELAY"
    done
fi

if command -v shasum >/dev/null 2>&1; then
    CHECKSUM="$(shasum -a 256 "$ZIP_PATH" | awk '{print $1}')"
else
    CHECKSUM="$(sha256sum "$ZIP_PATH" | awk '{print $1}')"
fi
echo "$FRAMEWORK_ZIP checksum: $CHECKSUM"

sed -i.bak "s/^let releaseChecksum = .*/let releaseChecksum = \"$CHECKSUM\"/" "$PACKAGE_SWIFT"
rm -f "$PACKAGE_SWIFT.bak"

if [ -n "$TMP_DIR" ]; then
    rm -rf "$TMP_DIR"
fi
