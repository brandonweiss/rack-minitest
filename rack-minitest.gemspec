# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack-minitest/version'

Gem::Specification.new do |gem|
  gem.name          = "rack-minitest"
  gem.version       = Rack::Minitest::VERSION
  gem.authors       = ["Brandon Weiss"]
  gem.email         = ["brandon@anti-pattern.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "json"
  gem.add_dependency "rack-test"
  gem.add_dependency "minitest"

  gem.add_development_dependency "rake"
end
