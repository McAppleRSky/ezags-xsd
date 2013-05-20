# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ezags-xsd/version'

Gem::Specification.new do |gem|
  gem.name          = "ezags-xsd"
  gem.version       = Ezags::Xsd::VERSION
  gem.authors       = ["Anton Sozontov"]
  gem.email         = ["a.sozontov@gmail.com"]
  gem.description   = %q{mappers for ezags-protocols}
  gem.summary       = %q{generated mappers for use ezags-protocols in ruby projects}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib app/mappers)

  gem.add_dependency('xml_schema_mapper', '>= 0.0.8')
  gem.add_dependency('libxml-ruby', '>= 2.6.0')

  gem.add_development_dependency('rspec')
end

