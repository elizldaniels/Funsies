require 'selenium-webdriver'

RSpec.configure do |config|

	config.before(:each) do
		@driver = Selenium::WebDriver.for :firefox
		@driver.get 'https://qa.wrapdev.net/index/'
		@driver.manage.window.maximize()
	end

	config.after(:each) do
		@driver.quit()
	end
end
