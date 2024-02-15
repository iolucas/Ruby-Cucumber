require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 5
#   config.app_host = 'http://www.google.com'
end