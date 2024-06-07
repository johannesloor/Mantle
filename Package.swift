// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Mantle",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Mantle",
            targets: ["Mantle"]
        )
    ],
    targets: [
        .target(
            name: "Mantle",
            dependencies: ["extobjc"],
            path: "Mantle",
            exclude: ["extobjc"]
        ),
        .target(
            name: "extobjc",
            path: "Mantle/extobjc"
        )
    ]
)
