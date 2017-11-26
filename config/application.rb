require File.expand_path('../boot', __FILE__)
require File.expand_path('../db', __FILE__)

Bundler.require :default, ENV['RACK_ENV']

require File.expand_path('../../api/BikeController', __FILE__)