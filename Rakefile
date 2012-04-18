#!/usr/bin/env rake
require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)

desc "Update assets"
task 'update' do
  system("rm -rf bootstrap-datepicker-src")
  system("git clone git://github.com/eternicode/bootstrap-datepicker.git bootstrap-datepicker-src")
  system("cp bootstrap-datepicker-src/css/datepicker.css vendor/assets/stylesheets/bootstrap-datepicker.css")
  system("cp bootstrap-datepicker-src/js/bootstrap-datepicker.js vendor/assets/javascripts/bootstrap-datepicker/core.js")
  system("cp -R bootstrap-datepicker-src/js/locales/ vendor/assets/javascripts/bootstrap-datepicker/locales/")
  system("git status")
end

desc "Build the gem"
task "build" do
  system("gem build bootstrap-datepicker-rails.gemspec")
end

desc "Publish the gem"
task 'publish' do
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")
  system("git push")
end

desc "Build and publish de gem"
task "release" do
  system("gem build bootstrap-datepicker-rails.gemspec")
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")
  system("git push")
end