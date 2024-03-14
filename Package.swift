// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: Libiguana

import PackageDescription;

let package = Package(
    name: "Libiguana",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Libiguana",
            targets: ["Libiguana"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "Libiguana",
            dependencies: [
                .target(name: "RustFramework")
            ],
            resources: [
                .copy("Resources/jimulator"),
                .copy("Resources/aasm"),
                .copy("Resources/mnemonics"),
            ]
        ),
    ]
)