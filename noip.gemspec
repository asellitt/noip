# encoding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "noip/version"

Gem::Specification.new do |spec|
  spec.name          = "noip"
  spec.version       = Noip::VERSION
  spec.authors       = ["Anthony Sellitti"]
  spec.email         = ["anthony.noip_gem@asellitt.com"]
  spec.summary       = "Dynamic DNS updater for No-IP"
  spec.homepage      = "https://github.com/asellitt/noip"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
