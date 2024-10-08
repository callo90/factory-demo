// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Presentation",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Presentation",
            targets: ["Presentation"])
    ],
    dependencies: [
        .package(path: "../Domain"),
        .package(path: "../Shared"),
        .package(url: "https://github.com/relatedcode/ProgressHUD", exact: "14.1.3"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.12.0")
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: ["Domain", "Shared", "ProgressHUD", "Kingfisher"]),
        .testTarget(
            name: "PresentationTests",
            dependencies: ["Presentation"])
    ]
)
