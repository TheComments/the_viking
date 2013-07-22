# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viking/version'

Gem::Specification.new do |gem|
  gem.name          = "viking"
  gem.version       = Viking::VERSION
  gem.authors       = ["Risk Danger Olson", "James Herdman", "Pierre-Louis Gottfrois"]
  gem.email         = ["pl.gottfrois@dimelo.com"]
  gem.description   = %q{Modernized gem version of the Viking plugin}
  gem.summary       = %q{Modernized gem version of the Viking plugin}
  gem.homepage      = "https://github.com/dimelo/viking"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency(%q{rspec}, ['~> 2.12.0'])
  gem.add_development_dependency(%q{rake})

end
