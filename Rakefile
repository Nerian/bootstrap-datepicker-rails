#!/usr/bin/env rake

desc "Update assets"
task :update do
  
  if Dir.exist?('bootstrap-datepicker-src')    
    system("cd bootstrap-datepicker-src && git pull && cd ..")
  else
    system("git clone git://github.com/eternicode/bootstrap-datepicker.git bootstrap-datepicker-src")
  end
  system("cp bootstrap-datepicker-src/css/datepicker.css vendor/assets/stylesheets/bootstrap-datepicker.css")
  system("cp bootstrap-datepicker-src/js/bootstrap-datepicker.js vendor/assets/javascripts/bootstrap-datepicker/core.js")
  system("cp -R bootstrap-datepicker-src/js/locales/ vendor/assets/javascripts/bootstrap-datepicker/locales/")
  system("git status")  
end

desc "Build"
task "build" do    
  system("gem build bootstrap-datepicker-rails.gemspec")
end

desc "Build and publish the gem"
task :publish => :build do    
  require File.expand_path('../lib/bootstrap-datepicker-rails/version', __FILE__)
  system("gem push bootstrap-datepicker-rails-#{BootstrapDatepickerRails::Rails::VERSION}.gem")  
  system("git push")
end