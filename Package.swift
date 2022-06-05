// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RenetikFramework",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RenetikFramework",
            targets: ["RenetikFramework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rene-dohan/renetik-library-ios", branch: "main"),
        .package(url: "https://github.com/rene-dohan/renetik-ios-layout", branch: "main"),
    ],
    targets: [
        .target(
            name: "RenetikFramework",
            dependencies: [
                .product(name: "Renetik", package: "renetik-library-ios"),
                .product(name: "RenetikLayout", package: "renetik-ios-layout"),
            ]
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
