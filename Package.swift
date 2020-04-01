// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stack",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Stack",
            targets: ["Stack"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Mohamed-Afsar/DoublyLinkedList.git",
        .exact("1.0.0"))
//        .package(path: "../DoublyLinkedList")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Stack",
            dependencies: ["DoublyLinkedList"],
            path: "Stack/Sources/Stack"),
        .testTarget(
            name: "StackTests",
            dependencies: ["Stack"],
            path: "Stack/Tests/StackTests"),
    ]
)
