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
        .package(url: "https://github.com/renetik/renetik-ios-core", branch: "master"),
        .package(url: "https://github.com/renetik/renetik-ios-layout", branch: "master"),
    ],
    targets: [
        .target(
            name: "RenetikFramework",
            dependencies: [
                .product(name: "RenetikCore", package: "renetik-ios-core"),
                .product(name: "RenetikLayout", package: "renetik-ios-layout"),
            ]
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
