#
# Be sure to run `pod lib lint SPBaseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SPBaseKit'
  s.version          = '0.0.1'
  s.summary          = 'A swift project common pod.'

  s.description      = <<-DESC
                    A swift project common pod: Fabric, Amplitude, Logger.
                       DESC

  s.homepage         = 'https://github.com/Tuluobo/SPBaseKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tuluobo' => 'tuluobo@vip.qq.com' }
  s.source           = { :git => 'https://github.com/Tuluobo/SPBaseKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  # s.source_files = 'SPBaseKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SPBase' => ['SPBaseKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.static_framework = true
  s.dependency 'Amplitude-iOS', '~> 4.2'
  s.dependency 'Fabric', '~> 1.7'
  s.dependency 'Crashlytics', '~> 3.10'
end
