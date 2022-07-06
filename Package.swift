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
        .package(url: "https://github.com/CombineCommunity/CombineExt.git", from: "1.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.2.0")
    ],
    targets: [
        .target(
            name: "GamzaUIKit",
            dependencies: [
                .product(name: "CombineExt", package: "CombineExt"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ],
            path: "GamzaUIKit",
            exclude: ["../Example"]
        )
    ]
)
