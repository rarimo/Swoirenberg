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
            url: "https://github.com/rarimo/Swoirenberg/releases/download/v1.1.1/Swoirenberg.xcframework.zip",
            checksum: "ed49b4d520b0d15d8c12aad41031ccd08eb13e4df0e3ddfa506089c9d4c93a22"),
        .testTarget(
            name: "SwoirenbergTests",
            dependencies: ["Swoirenberg"],
            path: "Swift/Tests/SwoirenbergTests"),
    ]
)
