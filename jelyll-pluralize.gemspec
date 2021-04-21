# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/pluralize/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-pluralize'
  spec.version       = Jekyll::Pluralize::VERSION
  spec.authors       = ['David Demonchy']
  spec.email         = ['david@demonchy.info']
  spec.description   = 'pluralize liquid filter for Jekyll'
  spec.summary       = 'liquid filter which converts string with pluralize.'
  spec.homepage      = 'https://github.com/fusco/jekyll-pluralize'
  spec.license       = 'MIT'
  spec.files         = [*Dir['lib/**/*.rb'], 'README.md', 'LICENSE.md']
  spec.test_files    = [*Dir['spec/*.rb']]
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'rubocop', '~> 0.71'
  spec.add_development_dependency 'rubocop-jekyll', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3.5'
end
