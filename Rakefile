#!/usr/bin/env rake

require 'json'

desc "Update assets"
task :update do
  if Dir.exist?('bootstrap-datepicker-src')
    system("cd bootstrap-datepicker-src && git checkout release && git pull && cd ..")
  else
    system("git clone git://github.com/eternicode/bootstrap-datepicker.git bootstrap-datepicker-src")
    system("cd bootstrap-datepicker-src && git checkout release && cd ..")
  end
  system("cp bootstrap-datepicker-src/css/datepicker.css vendor/assets/stylesheets/bootstrap-datepicker.css")
  system("cp bootstrap-datepicker-src/js/bootstrap-datepicker.js vendor/assets/javascripts/bootstrap-datepicker/core.js")
  system("cp -R bootstrap-datepicker-src/js/locales/ vendor/assets/javascripts/bootstrap-datepicker/locales/")
  system("git status")

  puts "\n"
  puts "bootstrap-datepicker version:       #{JSON.parse(File.read('./bootstrap-datepicker-src/bower.json'))['version']}"
  puts "bootstrap-datepicker-rails version: #{BootstrapDatepickerRails::Rails::VERSION}"
end

desc "Build"
task "build" do
  system("gem build bootstrap-datepicker-rails.gemspec")
end

desc "Build and publish the gem"
task :publish => :build do
  require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)
  tags = `git tag`.split
  current_version = BootstrapDatepickerRails::Rails::VERSION
  system("git tag -a #{current_version} -m 'Release #{current_version}'") unless tags.include?(current_version)
  system("gem push bootstrap-datepicker-rails-#{current_version}.gem")
  system("git push --follow-tags")
end

task :release => :publish do
end