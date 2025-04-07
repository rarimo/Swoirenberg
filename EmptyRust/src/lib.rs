// Expose functions using FFI and swift-bridge so we can call them in Swift
#[swift_bridge::bridge]
mod ffi {
    extern "Rust" {}
}
