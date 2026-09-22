// swift-tools-version: 5.9
import PackageDescription

let version = "11.2.0"
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
            checksum: "2691ce6c933e74a755998f861c8b841e10569e4249803efce44e31e0c3055765"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "ae80464a22d165ef6a9bfde5fd368b4e6717e070494aa2c9cbb89cb722927221"
        )
    ]
)
