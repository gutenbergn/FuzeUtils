Pod::Spec.new do |s|
  s.name             = 'FuzeUtils'
  s.version          = '0.1.9'
  s.summary          = 'This repository is meant to store several helper classes and extensions that are used in Fuze\'s personal projects.'

  s.description      = <<-DESC
FuzeUtils is a repository used by Fuze internally for easy access to several helper classes and extensions that are used throughout our apps. Please see the README file for more details.
                       DESC

  s.homepage         = 'https://github.com/gutenbergn/FuzeUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gutenbergn' => 'gutenbergn@gmail.com' }
  s.source           = { :git => 'https://github.com/gutenbergn/FuzeUtils.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/gutenbergn'

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'FuzeUtils/Classes/**/*'
end
