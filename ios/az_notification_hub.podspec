#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint azure_notification_hub.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'azure_notification_hub'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter plugin to work with Azure Notification Hubs.'
  s.description      = <<-DESC
A Flutter plugin to work with Azure Notification Hubs.
                       DESC
  s.homepage         = 'http://tangrainc.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Tangra Inc.' => 'office@tangrainc.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
  s.dependency 'AzureNotificationHubs-iOS', '> 3'
  s.static_framework = true
  
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
  s.swift_version = '5.0'
end
