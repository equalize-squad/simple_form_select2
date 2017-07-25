# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_select2/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_form_select2'
  spec.version       = SimpleFormSelect2::VERSION
  spec.authors       = ['Rogério Rodrigues de Alcântara']
  spec.email         = ['rogerio.alcantara@gmail.com']

  spec.summary       = 'SimpleForm Select2 autocomplete'
  spec.description   = 'Select2 autocomplete wrapper for SimpleForm associations'
  spec.homepage      = 'https://github.com/roalcantara/simple_form_select2'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport',              '~> 5.0'
  spec.add_dependency 'simple_form',                '~> 3.4'
  spec.add_dependency 'rails-assets-select2',       '~> 4.0.3'

  spec.add_development_dependency 'bundler',        '~> 1.13'
  spec.add_development_dependency 'rake',           '~> 10.0'
  spec.add_development_dependency 'rspec',          '~> 3.0'
  spec.add_development_dependency 'rails',          '~> 5.0'
end
