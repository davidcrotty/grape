require File.expand_path('../boot', __FILE__)

require 'active_record'
require 'yaml'

env = 'default' || ENV['env']

db_config = YAML::safe_load(File.open('config/database.yml'))[env]

ActiveRecord::Base.establish_connection(db_config)

Dir["#{File.dirname(__FILE__)}../../models/*.rb"].each {|f| require f}

Bundler.require :default, ENV['RACK_ENV']

require File.expand_path('../../api/BikeController', __FILE__)
