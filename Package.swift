// swift-tools-version: 5.9
import PackageDescription

let version = "11.0.3"
let baseURL = "https://github.com/PayMitto/paymitto-ios/releases/download/\(version)"

let package = Package(
    name: "PayMittoSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "PayMittoSDK",
            targets: ["PayMittoSDK", "VisaSensoryBranding"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PayMittoSDK",
            url: "\(baseURL)/PayMittoSDK.xcframework.zip",
            checksum: "86f4f09e14f7a7a700fb0dc8f90e24fb6c54c8d6cbd433b7f2b19bd5f9de1929"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "ae80464a22d165ef6a9bfde5fd368b4e6717e070494aa2c9cbb89cb722927221"
        )
    ]
)
