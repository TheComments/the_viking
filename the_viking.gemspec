# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_viking/version'

Gem::Specification.new do |gem|
  gem.name          = "the_viking"
  gem.version       = TheViking::VERSION
  gem.authors       = ["Risk Danger Olson", "James Herdman", "Pierre-Louis Gottfrois", "Ilya N. Zykin"]
  gem.email         = ["ilya-zykin@ya.ru", "pl.gottfrois@dimelo.com"]
  gem.description   = %q{TheViking is repack of Viking gem}
  gem.summary       = %q{Akismet anti-spam service for Ruby and Rails}
  gem.homepage      = "https://github.com/the-teacher/the_viking"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency(%q{rspec}, ['~> 2.12.0'])
  gem.add_development_dependency(%q{rake})
end
