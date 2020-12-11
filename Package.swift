// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftLink",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v11),
        .tvOS(.v12),
    ],
    products: [
        .library(
            name: "SwiftLink",
            targets: ["SwiftLink"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftLink",
            path: "SwiftLink",
            publicHeadersPath: "",
            cxxSettings: [
                .headerSearchPath("../link/include"),
                .headerSearchPath("../link/modules/asio-standalone/asio/include"),
                .define("LINK_PLATFORM_MACOSX")
            ]
        ),
    ],
    cxxLanguageStandard: .gnucxx14
)
