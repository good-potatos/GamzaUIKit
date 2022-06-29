// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GamzabadaUIKit-iOS",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "GamzabadaUIKit-iOS",
            targets: ["GamzabadaUIKit-iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CombineCommunity/CombineExt.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GamzabadaUIKit-iOS",
            dependencies: [
                .product(name: "CombineExt", package: "CombineExt"),
            ]),
        .testTarget(
            name: "GamzabadaUIKit-iOSTests",
            dependencies: ["GamzabadaUIKit-iOS"]),
    ]
)
