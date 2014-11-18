# -*- encoding: utf-8 -*-

require File.expand_path('../lib/manifestrepo/builder/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "manifestrepo-builder"
  gem.version       = Manifestrepo::Builder::VERSION
  gem.summary       = %q{Repo builder for a software manifest}
  gem.description   = %q{Repo builder of the software manifest.yml}
  gem.license       = "Apachev2"
  gem.authors       = ["Christo De Lange"]
  gem.email         = "rubygems@dldinternet.com"
  gem.homepage      = "https://rubygems.org/gems/manifestrepo-builder"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'cicd-builder', '> 0.9.23'
  gem.add_dependency 'json', '= 1.8.1'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
