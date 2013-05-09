$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

require 'rubygems'
require 'bundler'

Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Beers'
  app.frameworks += ['CoreLocation', 'MapKit', 'AddressBook']
end
