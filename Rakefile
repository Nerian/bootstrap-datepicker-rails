#!/usr/bin/env rake
require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)

desc "Update assets"
task 'update' do
  system("rm -rf bootstrap-datepicker")
  system("git clone git://github.com/eternicode/bootstrap-datepicker.git")
  system("cp bootstrap-datepicker/css/datepicker.css vendor/assets/stylesheets/bootstrap-datepicker.css")
  system("cp bootstrap-datepicker/js/bootstrap-datepicker.js vendor/assets/javascripts/bootstrap-datepicker.js")
end

desc "Build the gem"
task "build" do
  system("gem build bootstrap-datepicker-rails.gemspec")
end

desc "Publish the gem"
task 'publish' do
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")
end