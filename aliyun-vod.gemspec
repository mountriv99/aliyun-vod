# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aliyun/vod/version'

Gem::Specification.new do |s|
  s.name          = 'aliyun-vod'
  s.version       = Aliyun::VOD::VERSION
  s.date          = '2019-03-27'
  s.summary       = "Ruby SDK for Aliyun VOD API development"
  s.description   = "Ruby SDK for Aliyun VOD API development based on aliyun-mts by fwshun8023"
  s.authors       = ["mountriv99"]
  s.email         = []
  s.homepage      = 'https://github.com/mountriv99/aliyun-vod'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake", "~> 11.2"
end
