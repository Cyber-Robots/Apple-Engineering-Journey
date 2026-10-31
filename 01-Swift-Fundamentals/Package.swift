// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SwiftFundamentals",
    products: [
        .library(name: "SwiftFundamentals", targets: ["SwiftFundamentals"])
    ],
    targets: [
        .target(name: "SwiftFundamentals"),
        .testTarget(
            name: "SwiftFundamentalsTests",
            dependencies: ["SwiftFundamentals"]
        )
    ]
)
