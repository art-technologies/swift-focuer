// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Focuser",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "Focuser",
            targets: ["Focuser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/siteline/swiftui-introspect", exact: "1.3.0")
    ],
    targets: [
        .target(
            name: "Focuser",
            dependencies: [.product(name: "SwiftUIIntrospect", package: "SwiftUI-Introspect")]
        ),
        .testTarget(
            name: "FocuserTests",
            dependencies: ["Focuser"]
        ),
    ]
)
