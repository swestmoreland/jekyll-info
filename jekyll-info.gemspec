# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-info/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-info"
  spec.version       = Jekyll::Info::VERSION
  spec.authors       = ["Steven Westmoreland"]
  spec.email         = ["steven.westmoreland@gmail.com"]
  spec.summary       = "A Jekyll plugin to provide information about your Jekyll site."
  spec.homepage      = "https://github.com/swestmoreland/jekyll-info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r!^bin/!) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r!^(test|spec|features)/!)
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.3"
end
