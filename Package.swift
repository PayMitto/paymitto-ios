// swift-tools-version: 5.9
import PackageDescription

let version = "11.0.4"
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
            checksum: "a2de754675545dffaf59b0ca20ba5f5d94fac596511385a3453c9c9d45797fb7"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "ae80464a22d165ef6a9bfde5fd368b4e6717e070494aa2c9cbb89cb722927221"
        )
    ]
)
