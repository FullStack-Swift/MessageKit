// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MessageKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "MessageKit",
            targets: ["MessageKit"]),
    ],
    dependencies: [
         .package(url: "https://github.com/FullStack-Swift/SwiftUIX", branch: "main"),
         .package(url: "https://github.com/FullStack-Swift/CombineX.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "MessageKit",
            dependencies: ["SwiftUIX", "CombineX"]),
        .testTarget(
            name: "MessageKitTests",
            dependencies: ["MessageKit"]),
    ]
)
