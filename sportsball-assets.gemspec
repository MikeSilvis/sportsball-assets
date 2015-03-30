# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sportsball/assets/version'

Gem::Specification.new do |spec|
  spec.name          = "sportsball-assets"
  spec.version       = Sportsball::Assets::VERSION
  spec.authors       = ["Mike Silvis"]
  spec.email         = ["mikesilvis@gmail.com"]
  spec.summary       = %q{Encodes and decodes asset urls}
  spec.description   = %q{What he said above}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
