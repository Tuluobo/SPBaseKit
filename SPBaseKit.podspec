Pod::Spec.new do |s|
  s.name             = 'SPBaseKit'
  s.version          = '0.0.4'
  s.summary          = 'A swift project common pod.'

  s.description      = <<-DESC
                    A swift project common pod: Fabric, Amplitude, Logger.
                       DESC

  s.homepage         = 'https://github.com/Tuluobo/SPBaseKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tuluobo' => 'tuluobo@vip.qq.com' }
  s.source           = { :git => 'https://github.com/Tuluobo/SPBaseKit.git', :tag => s.version.to_s }
  s.swift_version = '4.2'
  
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  s.source_files = 'SPBaseKit/Classes/**/*.swift'
  
end
