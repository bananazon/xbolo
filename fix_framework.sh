#!/bin/bash
# Build and install TCMPortMapper.framework from submodule

set -e

SRCROOT="${SRCROOT:-$(cd "$(dirname "$0")" && pwd)}"
BUILT_PRODUCTS_DIR="${BUILT_PRODUCTS_DIR:-${SRCROOT}/build/Development}"
FRAMEWORKS_FOLDER_PATH="${FRAMEWORKS_FOLDER_PATH:-XBolo.app/Contents/Frameworks}"
CONFIGURATION="${CONFIGURATION:-Release}"

TCMPORTMAPPER_PROJECT="${SRCROOT}/tcmportmapper/Port Map.xcodeproj"
DST_FRAMEWORK="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/TCMPortMapper.framework"

if [ ! -d "$TCMPORTMAPPER_PROJECT" ]; then
    echo "Error: TCMPortMapper submodule not found at $TCMPORTMAPPER_PROJECT"
    echo "Run: git submodule update --init --recursive"
    exit 1
fi

echo "Building TCMPortMapper.framework for arm64 and x86_64..."
cd "${SRCROOT}/tcmportmapper"

# Build for both architectures (ignore versioning script errors)
xcodebuild -project "Port Map.xcodeproj" \
    -target "TCMPortMapper" \
    -configuration "$CONFIGURATION" \
    ARCHS="arm64 x86_64" \
    ONLY_ACTIVE_ARCH=NO \
    BUILD_DIR="${SRCROOT}/tcmportmapper/build" \
    clean build || true

# The framework should now be built
SRC_FRAMEWORK="${SRCROOT}/tcmportmapper/build/${CONFIGURATION}/TCMPortMapper.framework"

if [ ! -d "$SRC_FRAMEWORK" ]; then
    echo "Error: Built framework not found at $SRC_FRAMEWORK"
    exit 1
fi

echo "Copying TCMPortMapper.framework to app bundle..."
rm -rf "$DST_FRAMEWORK"
ditto "$SRC_FRAMEWORK" "$DST_FRAMEWORK"

# Code sign the framework binary
codesign --force --sign - --timestamp=none "$DST_FRAMEWORK/Versions/A/TCMPortMapper" 2>/dev/null || true

# Code sign the framework
codesign --force --sign - --timestamp=none "$DST_FRAMEWORK" 2>/dev/null || true

# Code sign the app
codesign --force --sign - --timestamp=none "${BUILT_PRODUCTS_DIR}/XBolo.app" 2>/dev/null || true

# Verify
BINARY="$DST_FRAMEWORK/Versions/A/TCMPortMapper"
if [ -f "$BINARY" ]; then
    SIZE=$(ls -lh "$BINARY" | awk '{print $5}')
    SYMBOL_COUNT=$(nm "$BINARY" 2>/dev/null | wc -l | xargs)
    echo "Framework binary size: $SIZE"
    echo "Symbol count: $SYMBOL_COUNT"
    echo "Done!"
else
    echo "Error: Framework binary not found after copy"
    exit 1
fi
