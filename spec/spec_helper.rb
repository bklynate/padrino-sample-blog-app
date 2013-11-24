require 'simplecov'
SimpleCov.start do
  # ignore padrino admin panel
  add_filter "/admin/"

  # ignore padrino admin models
  add_filter "/models/account.rb"
end

PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

Dir[File.expand_path(File.dirname(__FILE__) + "/support/**/*.rb")].each do |f|
  require f
end

require 'database_cleaner'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include FactoryGirl::Syntax::Methods

  config.before do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end
end

def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end
