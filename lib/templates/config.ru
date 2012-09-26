require 'rubygems'
require 'bundler/setup'
require 'sprockets'
require 'chrome_packager'
require 'haml-sprockets'

map '/assets' do
  environment = Sprockets::Environment.new

  #App assets
  environment.append_path 'app/assets/javascripts'
  environment.append_path 'app/assets/stylesheets'

  #Vendor assets
  environment.append_path 'vendor/assets/javascripts'
  environment.append_path 'vendor/assets/stylesheets'

  run environment
end

run ChromePackager::Application

