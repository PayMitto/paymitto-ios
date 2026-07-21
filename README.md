# PayMitto SDK - iOS

Distribution of the PayMitto SDK via Swift Package Manager and Cocoapods.

**Repository:** [https://github.com/PayMitto/paymitto-ios](https://github.com/PayMitto/paymitto-ios)

## Requirements

- Xcode 26.0+
- Swift 5.9+
- iOS 16.0+

## Developer Documentation
 [iOS](https://developer.readyremit.com/docs/mobile-sdk-ios)

## Installation

### Xcode

1. File → Add Package Dependencies
2. Enter: `https://github.com/PayMitto/paymitto-ios`
3. Select version: `11.0.1`

### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/PayMitto/paymitto-ios", exact: "11.0.1")
]
```

Then add `PayMittoSDK` to your target's dependencies:

```swift
.target(
    name: "YourApp",
    dependencies: [
        .product(name: "PayMittoSDK", package: "paymitto-ios")
    ]
)
```

### CocoaPods

Add the pod to your `Podfile`:

```ruby
pod 'PayMittoSDK', :git => 'https://github.com/PayMitto/paymitto-ios.git', :tag => '11.0.1'
```

Then run:

```bash
pod install
```

## Usage

```swift
import PayMittoSDK

// Initialize and use PayMitto SDK
// See developer documentation above
```

## License

Proprietary - PayMitto, LLC
