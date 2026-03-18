// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "SAMKeychain",
            targets: ["SAMKeychain"]
        )
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            path: "Sources",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("Security")
            ]
        )
    ]
)
