#---------------------------------------
# Author: Thayanne Albuquerque Freire
# Author: Ernesto Cid Brasil de Matos
#---------------------------------------

require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'capybara/session'
require 'uri'
require 'rspec'

Capybara.register_driver :poltergeist do |app|
  file = File.open('javascript_console.log', 'w')
  Capybara::Poltergeist::Driver.new(app, debug: false, js_errors: false, phantomjs_logger: file)
end
Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end