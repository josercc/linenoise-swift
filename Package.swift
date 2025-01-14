// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "LineNoise",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "LineNoise",
            targets: ["LineNoise"]),
        .executable(
            name: "linenoiseDemo",
            targets: ["linenoiseDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "LineNoise",
            dependencies: [],
            path: "Sources/linenoise"),
        .target(
            name: "linenoiseDemo",
            dependencies: ["LineNoise"]),
        .testTarget(
            name: "linenoiseTests",
            dependencies: ["LineNoise", "Nimble"]),
    ]
)
