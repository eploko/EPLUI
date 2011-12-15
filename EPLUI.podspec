Pod::Spec.new do |s|
  s.name     = 'EPLUI'
  s.version  = '0.1.0'
  s.license  = 'MIT'
  s.summary  = 'Miscellaneous UI classes based on top of the Apple\'s Cocoa Touch UI classes.'
  s.homepage = 'https://github.com/eploko/EPLUI'
  s.author   = { 'Andrey Subbotin' => 'andrey@subbotin.me' }
  s.source   = { :git => 'https://github.com/eploko/EPLUI.git', :tag => '0.1.0' }
  s.platform = :ios
  s.source_files = 'EPLUI'
  s.frameworks = 'Foundation', 'UIKit'
end
