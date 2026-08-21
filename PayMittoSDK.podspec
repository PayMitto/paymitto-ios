Pod::Spec.new do |s|
  s.name             = 'PayMittoSDK'
  s.version          = '11.0.3'
  s.summary          = 'Cross-border payouts, remittances & disbursements made easy'
  
  s.description      = <<-DESC
    PayMitto SDK is designed to help you capture more revenue by quickly and
    seamlessly integrating global remittances into your product via SDK.
    PayMitto SDK takes care of the heavy lifting by forming partnerships,
    building infrastructure, and navigating the complex compliance and
    regulatory requirements needed.
  DESC

  s.homepage         = 'https://www.paymitto.com'
  s.license          = { :type => 'Proprietary', :text => 'Copyright PayMitto, LLC. All rights reserved.' }
  s.author           = { 'PayMitto' => 'contact@paymitto.com' }
  
  s.source           = {
    :git => 'https://github.com/PayMitto/paymitto-ios.git',
    :tag => s.version.to_s
  }

  s.platform         = :ios, '16.0'
  s.swift_version    = '5.9'

  s.prepare_command = <<-CMD
    set -e
    BASE='https://github.com/PayMitto/paymitto-ios/releases/download/#{s.version}'
    curl -fSL -o PayMittoSDK.xcframework.zip "${BASE}/PayMittoSDK.xcframework.zip"
    curl -fSL -o VisaSensoryBranding.xcframework.zip "${BASE}/VisaSensoryBranding.xcframework.zip"
    unzip -o -q PayMittoSDK.xcframework.zip
    unzip -o -q VisaSensoryBranding.xcframework.zip
  CMD

  s.vendored_frameworks = [
    'PayMittoSDK.xcframework',
    'VisaSensoryBranding.xcframework'
  ]
end
