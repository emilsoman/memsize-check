# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memsize/check/version'

Gem::Specification.new do |spec|
  spec.name          = "memsize-check"
  spec.version       = Memsize::Check::VERSION
  spec.authors       = ["Emil Soman"]
  spec.email         = ["emil.soman@gmail.com"]
  spec.summary       = %q{Testing ObjectSpace.memsize_of differences in ruby versions}
  spec.description   = %q{Testing ObjectSpace.memsize_of differences in ruby versions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.1.0"
end
