// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FakeTello",
    platforms: [
        .macOS(.v11), .iOS(.v14)
    ],
    products: [
        .executable(name: "fake-tello", targets: ["FakeTello"]),
    ],
    dependencies: [
        .package(name: "TelloSwift", url: "https://github.com/JASS-2021/TelloSwift.git", from: "1.1.0"),
        .package(name: "swift-argument-parser", url: "https://github.com/apple/swift-argument-parser.git", from: "0.4.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FakeTello",
            dependencies: [
                .product(name: "TelloSimulator", package: "TelloSwift"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
    ]
)
