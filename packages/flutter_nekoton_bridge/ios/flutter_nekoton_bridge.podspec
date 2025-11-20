release_tag_name = 'nekoton_bridge-v4.1.0' # generated; do not edit

# We cannot distribute the XCFramework alongside the library directly,
# so we have to fetch the correct version here.
framework_name = 'NekotonBridge.xcframework'
local_build_zip_name = File.expand_path("../../../../platform-build/#{framework_name}.zip", __dir__)
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/broxus/nekoton_bridge/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"

Pod::Spec.new do |spec|
  spec.name          = 'flutter_nekoton_bridge'
  spec.version       = '0.0.1'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/broxus/nekoton_bridge'
  spec.authors       = { 'Broxus' => 'hello@broxus.com' }
  spec.summary       = 'iOS Flutter bindings for nekoton'

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/#{framework_name}"

  spec.ios.deployment_target = '11.0'

  # Prepare the vendored XCFramework deterministically inside the sandbox.
  spec.prepare_command = <<-CMD
    set -euo pipefail

    FRAMEWORKS_DIR="Frameworks"
    FRAMEWORK_NAME="#{framework_name}"
    ZIP_NAME="#{local_zip_name}"
    DEFAULT_LOCAL_ZIP="#{local_build_zip_name}"
    DEFAULT_URL="#{url}"

    # Allow overrides via environment vars
    LOCAL_ZIP="${NEKOTON_BRIDGE_ZIP:-$DEFAULT_LOCAL_ZIP}"
    REMOTE_URL="${NEKOTON_BRIDGE_URL:-$DEFAULT_URL}"

    mkdir -p "$FRAMEWORKS_DIR"
    cd "$FRAMEWORKS_DIR"

    # Prefer local build artifact if present
    if [ -f "$LOCAL_ZIP" ]; then
      cp -f "$LOCAL_ZIP" "$ZIP_NAME"
    fi

    if [ ! -f "$ZIP_NAME" ]; then
      echo "Downloading NekotonBridge from $REMOTE_URL"
      curl -fL --retry 3 --connect-timeout 15 "$REMOTE_URL" -o "$ZIP_NAME"
    fi

    rm -rf "$FRAMEWORK_NAME"
    unzip -o -q "$ZIP_NAME"

    # Optionally clean zip to reduce sandbox size
    # rm -f "$ZIP_NAME"
  CMD
end
