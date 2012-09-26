Gem::Specification.new do |s|
  s.name        = 'chrome_packager'
  s.version     = '0.0.7'
  s.date        = '2012-09-23'
  s.summary     = "Create packaged chrome apps"
  s.description = "A simple tool to create packaged chrome apps"
  s.authors     = ["Herman Moreno"]
  s.email       = 'herman.moreno@crowdint.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/supherman/chrome_packager'

  s.executables = ['chrome-packager']

  s.add_dependency('sinatra')
  s.add_dependency('haml')
  s.add_dependency('sprockets')
  s.add_dependency('herman-haml-sprockets')
  s.add_dependency('sprockets-sass')
  s.add_dependency('sass')
  s.add_dependency('coffee-script')
  s.add_dependency('thor')
end

