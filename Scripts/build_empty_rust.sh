#!/usr/bin/env sh

set -e

echo "Building Swoirenberg.xcframework for aarch64-apple-ios-sim"

IPHONEOS_DEPLOYMENT_TARGET=15.0 cargo build --manifest-path EmptyRust/Cargo.toml --release --target aarch64-apple-ios-sim
