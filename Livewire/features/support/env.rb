require 'capybara/cucumber'
require 'selenium-webdriver'
require 'bundler/setup'
require 'pry'
require 'rspec'
require 'capybara-screenshot/cucumber'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--window-size=1440,900")
  options.add_argument("--disable-notifications")

  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    options: options
  )
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css
