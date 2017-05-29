# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popper_js/version'

Gem::Specification.new do |spec|
  spec.name          = 'popper_js'
  spec.version       = PopperJs::VERSION
  spec.authors       = ['Gleb Mazovetskiy']
  spec.email         = ['glex.spb@gmail.com']

  spec.summary       = 'https://popper.js.org/ packaged for Sprockets.'
  spec.homepage      = 'https://github.com/glebm/popper_js-rubygem'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
