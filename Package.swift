// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tyler.Tag",
    products: [
        .library(name: "Tyler.Tag", targets: ["Tag"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Tag", dependencies: []),
    ]
)
