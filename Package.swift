// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KalturaNetKit",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "KalturaNetKit",
            targets: [ "KalturaNetKit" ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .upToNextMinor(from: "5.0.1"))
    ],
    targets: [
        .target(
            name: "KalturaNetKit",
            dependencies: [
                "SwiftyJSON"
            ],
            path: "NetKit/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
