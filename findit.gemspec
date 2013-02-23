# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'findit/version'

Gem::Specification.new do |gem|
  gem.name          = "findit"
  gem.version       = Findit::VERSION
  gem.authors       = ["Roy Wright"]
  gem.email         = ["roy@wright.org"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  #gem.add_dependency('haml')

  gem.add_dependency('rack')
  gem.add_dependency('sinatra')
  gem.add_dependency('json_pure')
  gem.add_dependency('sequel')
  gem.add_dependency('sqlite3')

  gem.add_development_dependency('cane')
  gem.add_development_dependency('capybara')
  gem.add_development_dependency('cucumber')
  gem.add_development_dependency('cucumber-api-steps')
  gem.add_development_dependency('curb')
  gem.add_development_dependency('database_cleaner')
  gem.add_development_dependency('doc_to_dash')
  gem.add_development_dependency('factory_girl', '~> 2.0')  if RUBY_VERSION =~ %r{^1\.8\.}
  gem.add_development_dependency('factory_girl', '~> 3.0')  if RUBY_VERSION =~ %r{^1\.9\.}
  gem.add_development_dependency('pygments.rb')
  gem.add_development_dependency('rcov') if RUBY_VERSION =~ %r{^1\.8\.}
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('redcarpet')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('simplecov')  unless RUBY_VERSION =~ %r{^1\.8\.}
  gem.add_development_dependency('simplecov-rcov')  unless RUBY_VERSION =~ %r{^1\.8\.}
  gem.add_development_dependency('versionomy')
  gem.add_development_dependency('webrat')
  gem.add_development_dependency('xpath')
  gem.add_development_dependency('yard')
  gem.add_development_dependency('yard-blame')
  gem.add_development_dependency('yard-cucumber')
  gem.add_development_dependency('yard-pygmentsrb')
  gem.add_development_dependency('yard-rspec')
end
