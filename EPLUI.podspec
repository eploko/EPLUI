Pod::Spec.new do |s|
  s.name     = 'EPLUI'
  s.version  = '0.1.1'
  s.license  = 'MIT'
  s.summary  = 'Miscellaneous UI classes based on top of the Apple\'s Cocoa Touch UI classes.'
  s.homepage = 'https://github.com/eploko/EPLUI'
  s.author   = { 'Andrey Subbotin' => 'andrey@subbotin.me' }
  s.source   = { :git => 'https://github.com/eploko/EPLUI.git', :tag => '0.1.1' }
  s.platform = :ios
  s.source_files = 'EPLUI/*.{h,m}'
  s.resources = 'Resources/EPLUI.bundle'
  s.frameworks = 'Foundation', 'UIKit'
  s.dependency 'RegexKitLite', '~> 4.0'
end
