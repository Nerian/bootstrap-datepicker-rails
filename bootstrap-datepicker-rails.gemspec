# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Gonzalo Rodríguez-Baltanás Díaz"]
  gem.email         = ["siotopo@gmail.com"]
  gem.description   = %q{A date picker for Twitter Bootstrap}
  gem.homepage      = "https://github.com/Nerian/bootstrap-datepicker-rails"
  gem.summary       = gem.description

  gem.name          = "bootstrap-datepicker-rails"
  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split("\n")
  gem.version       = BootstrapDatepickerRails::Rails::VERSION

  gem.add_dependency "railties", ">= 3.0"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rake"
end
