// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "StartSwiftUIMainPackage",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .watchOS(.v11),
        .tvOS(.v18),
        .visionOS(.v2)
    ],
    products: [
        .library(
            name: "StartSwiftUIMainPackage",
            targets: ["StartSwiftUIMainPackage"]),
    ],
    targets: [
        .target(
            name: "StartSwiftUIMainPackage",
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "StartSwiftUIMainPackageTests",
            dependencies: ["StartSwiftUIMainPackage"]
        ),
    ]
)
