Pod::Spec.new do |s|
  s.name             = 'Models'
  s.version          = '1.2.0'
  s.summary          = 'Models layer of the project.'
  s.homepage         = 'https://github.com/iCookbook/Models'
  s.author           = { 'htmlprogrammist' => '60363270+htmlprogrammist@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/iCookbook/Models.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'Models/**/*.{swift}'
end