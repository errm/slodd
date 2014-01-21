# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slodd/version'

Gem::Specification.new do |gem|
  gem.name          = "slodd"
  gem.version       = Slodd::VERSION
  gem.authors       = ["Ed Robinson"]
  gem.email         = ["ed.robinson@reevoo.com"]
  gem.description   = %q{Schema Loading On Dependent Databases}
  gem.summary       = %q{Schema Loading On Dependent Databases}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('activerecord')
  gem.add_dependency('mysql2')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('simplecov')
  gem.add_development_dependency('rubocop')
end
