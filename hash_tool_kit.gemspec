# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_tool_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_tool_kit"
  spec.version       = HashToolKit::VERSION
  spec.authors       = ["Tom Kadwill", "Socrates Vicente"]
  spec.email         = ["tomkadwill@gmail.com", "socratesvicente@notonthehighstreet.com"]
  spec.summary       = %q{Manipulates hashes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
