// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GamzaUIKit",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "GamzaUIKit",
            targets: ["GamzaUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/good-potatos/GamzaFoundation", .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(
            name: "GamzaUIKit",
            dependencies: [
                .product(name: "GamzaFoundation", package: "GamzaFoundation")
            ],
            path: "GamzaUIKit",
            exclude: ["../Example"]
        )
    ]
)
