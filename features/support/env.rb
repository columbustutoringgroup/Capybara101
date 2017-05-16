ENV['RACK_ENV'] = 'test'

require File.dirname(__FILE__) + '/../../app'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'pry'

Capybara.app = Capybara101

class Capybara101World
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  MagicStrings = Struct.new(:username, :password).new('Vastanth', 'Vastanth')
  Capybara101World.new
end
