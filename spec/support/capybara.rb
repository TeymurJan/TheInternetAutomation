# frozen_string_literal: true

require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.app_host = 'https://the-internet.herokuapp.com'

Capybara.default_driver = :selenium_chrome