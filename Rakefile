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

desc "Build and publish de gem"
task "release" do
  version_file      = File.read("lib/bootstrap-datepicker-rails/version.rb")
  current_version   = version_file.match(/\d\d/)[0]
  updated_version   = current_version.to_i + 1
  replaced          = version_file.gsub(current_version, updated_version.to_s)  
  File.open("lib/bootstrap-datepicker-rails/version.rb", "w") { |file| file.puts replaced }
  
  system("git add . ")
  system("git commit -m 'update assets'")
  
  system("gem build bootstrap-datepicker-rails.gemspec")
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")  
  system("git push")
end