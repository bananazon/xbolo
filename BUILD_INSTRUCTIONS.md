# XBolo Build Instructions

## Building in Xcode

The XBolo project has been modernized to work with modern Xcode and macOS:

- Enabled ARC (Automatic Reference Counting)
- Removed Carbon.framework dependencies
- Updated to use modern Objective-C syntax
- Built with universal TCMPortMapper.framework (ARM64 + x86_64 support)

## TCMPortMapper Dependency

The project includes TCMPortMapper as a git submodule, with ARM64 support added at:
https://github.com/bananazon/TCMPortMapper

### Initial Setup

When cloning the XBolo repository for the first time:

```bash
git clone git@github.com:bananazon/xbolo.git
cd xbolo
git submodule update --init --recursive
```

### Building

After building in Xcode (Development configuration), run this script to build and install TCMPortMapper:

```bash
./fix_framework.sh
```

This script:
1. Builds TCMPortMapper.framework from the submodule for both ARM64 and x86_64
2. Copies the framework to the app bundle with full debug symbols (273KB vs 32KB stripped)
3. Code signs the framework and app

### Complete Build Workflow

```bash
# Build XBolo
xcodebuild -project XBolo.xcodeproj -target "Mac OS X" -configuration Development build

# Build and install TCMPortMapper
./fix_framework.sh

# Run
open build/Development/XBolo.app
```

Or from Xcode:
1. Build the project (Cmd+B)
2. Run `./fix_framework.sh` from Terminal in the project directory
3. Run the app (Cmd+R)

## Why This Is Needed

Xcode's Copy Frameworks build phase strips symbols from frameworks during Development builds. The build sandbox prevents script phases from overwriting files in the app bundle, so we use a post-build script to build TCMPortMapper from source and copy it with full symbols intact.

For Deployment/Release builds, the build script phase runs automatically during deployment postprocessing.

## Project Structure

- `XBolo.xcodeproj` - Main Xcode project
- `tcmportmapper/` - Git submodule with ARM64-enabled TCMPortMapper
- `fix_framework.sh` - Post-build script to build and install TCMPortMapper
- `Mac OS X/` - macOS application source
- `XBolo Quick Look Plug-in/` - Quick Look plugin for .bolo files
- `BUILD_INSTRUCTIONS.md` - This file

## Updating TCMPortMapper

To update the TCMPortMapper submodule to the latest version:

```bash
cd tcmportmapper
git pull origin master
cd ..
git add tcmportmapper
git commit -m "Update TCMPortMapper submodule"
```
