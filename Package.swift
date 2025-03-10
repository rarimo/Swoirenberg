// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swoirenberg",
    platforms: [ .macOS(.v10_15), .iOS(.v15) ],
    products: [
        .library(
            name: "Swoirenberg",
            targets: ["Swoirenberg", "SwoirenbergFramework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swoir/SwoirCore.git", exact: "0.7.1"),
    ],
    targets: [
        .target(
            name: "Swoirenberg",
            dependencies: ["SwoirCore", "SwoirenbergFramework"],
            path: "Swift/Sources/Swoirenberg",
            linkerSettings: [ .linkedFramework("SystemConfiguration") ]),
        .binaryTarget(
            name: "SwoirenbergFramework",
            url: "https://github.com/rarimo/Swoirenberg/releases/download/v1.0.0-beta.3-2/Swoirenberg.xcframework.zip",
            checksum: "84f8545ac1d61f5341297eb902e845add44c3114a5d2b8bd1cc35f12ece1833d"),
        .testTarget(
            name: "SwoirenbergTests",
            dependencies: ["Swoirenberg"],
            path: "Swift/Tests/SwoirenbergTests"),
    ]
)
