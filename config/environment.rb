ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)

require './app/models/concerns/slugifiable'
require "rails_erd/diagram/graphviz"
require_all 'app'
