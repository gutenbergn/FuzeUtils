Pod::Spec.new do |s|
  s.name             = 'FuzeUtils'
  s.version          = '0.1.0'
  s.summary          = 'This repository is meant to store several helper classes and extensions that are used in Fuze\'s personal projects.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/gutenbergn/FuzeUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gutenbergn' => 'gutenbergn@gmail.com' }
  s.source           = { :git => 'https://github.com/gutenbergn/FuzeUtils.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/gutenbergn'

  s.ios.deployment_target = '9.0'

  s.source_files = 'FuzeUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FuzeUtils' => ['FuzeUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'MediaPlayer'
  # s.dependency 'AFNetworking', '~> 2.3'
end
