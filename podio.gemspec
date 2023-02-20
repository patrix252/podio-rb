$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'podio/version'

Gem::Specification.new do |s|
  s.name              = 'podio'
  s.version           = Podio::VERSION
  s.platform          = Gem::Platform::RUBY
  s.summary           = 'Ruby wrapper for the Podio API'
  s.description       = 'The official Ruby wrapper for the Podio API used and maintained by the Podio team'
  s.license           = 'MIT'

  s.authors           = ['Florian Munz', 'Casper Fabricius']
  s.email             = 'munz@podio.com'
  s.homepage          = 'https://github.com/podio/podio-rb'

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths     = ['lib']

  s.add_dependency('faraday', '~> 2.7') # ['>= 0.8.0', '<= 1.3.0']
  s.add_dependency('faraday-multipart', '~> 1.0') # ['>= 0.8.0', '<= 1.3.0']

  s.add_dependency('multi_json')
  s.add_dependency('activesupport', '~> 7.0')
  s.add_dependency('activemodel', '~> 7.0')

  s.add_development_dependency('rake')
  s.add_development_dependency('yard')
  s.add_development_dependency('minitest', '~> 5.14')
end
