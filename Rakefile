#!/usr/bin/env rake
require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)

desc "Build the gem"
task "build" do
  system("gem build bootstrap-datepicker-rails.gemspec")
end

desc "Publish the gem"
task 'publish' do
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")
end