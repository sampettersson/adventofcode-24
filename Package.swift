// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adventofcode-24",
    platforms: [.macOS(.v15)],
    products: [],
    targets: [
        .target(
            name: "Inputs",
            resources: [
                .copy("Resources/.")
            ]
        ),
        .testTarget(
            name: "Code",
            dependencies: [
                "Inputs"
            ]
        ),
    ]
)
