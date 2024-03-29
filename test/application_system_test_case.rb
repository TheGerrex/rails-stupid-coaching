require "test_helper"


class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    Selenium::WebDriver::Chrome.path = '/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome'

  Capybara.register_driver(:headless_chrome) do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome \
      chromeOptions: { args: %w[headless disable-gpu window-size=1280x760] }
    Capybara::Selenium::Driver.new app,
      browser: :chrome, desired_capabilities: capabilities
  end
  driven_by :headless_chrome
end
