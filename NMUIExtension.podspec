Pod::Spec.new do |s|
  s.name             = 'NMUIExtension'
  s.version          = '0.0.4'
  s.summary          = 'Extension on UIKit'
  s.description      = <<-DESC
Add some nice things to UIKit.
                       DESC

  s.homepage         = 'https://github.com/NicolasMahe/NMUIExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nicolas Mahé' => 'nicolas@mahe.me' }
  s.source           = { :git => 'https://github.com/NicolasMahe/NMUIExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NMUIExtension/**/*.swift'

  s.frameworks = 'CoreGraphics'
  s.dependency "SnapKit", "~> 3.0"
  s.dependency 'NMCGExtension'

end
