// swift-tools-version: 5.9
import PackageDescription

let version = "11.0.0"
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
            checksum: "6531f8ac4e4be56b2caca69d0daa3631071929e9924e14a844bc5a9077a35799"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "ae80464a22d165ef6a9bfde5fd368b4e6717e070494aa2c9cbb89cb722927221"
        )
    ]
)
