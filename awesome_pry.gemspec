# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awesome_pry/version'

Gem::Specification.new do |spec|
  spec.name          = 'awesome_pry'
  spec.version       = AwesomePry::VERSION
  spec.authors       = ['Vsevolod Romashov']
  spec.email         = ['7@7vn.ru']
  spec.summary       = %q{pry + awesome_print = happiness}
  spec.description   = %q{Replaces your application's console with pry powered by awesome_print.}
  spec.homepage      = 'https://github.com/7even/awesome_pry'
  spec.license       = 'MIT'
  
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  
  spec.add_runtime_dependency 'pry-rails'
  spec.add_runtime_dependency 'awesome_print'
  
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
