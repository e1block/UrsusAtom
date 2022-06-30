// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UrsusAtom",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UrsusAtom",
            targets: ["UrsusAtom"]),
    ],
    dependencies: [
        .package(name: "BigInt", url: "https://github.com/attaswift/BigInt", from: "5.3.0"),
        .package(url: "https://github.com/daisuke-t-jp/MurmurHash-Swift.git", from: "1.1.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UrsusAtom",
            dependencies: [
                .product(name: "BigInt", package: "BigInt"),
                .product(name: "MurmurHash-Swift", package: "MurmurHash-Swift"),
//                .product(name: "Parity", package: "Parity"),
            ])
//        .testTarget(
//            name: "UrsusAtomTests",
//            dependencies: ["UrsusAtom"]),
    ]
)
