require 'selenium-webdriver'

class PageHelper

	def initialize(driver)
		@driver = driver
	end

#this allows me to click multiple buttons in a row without calling the click function on multiple lines
	def click(*locators)
		locators.each { |locator| @driver.find_element(locator).click }
	end

	def type(locator, text)
		@driver.find_element(locator).send_keys text
	end

	def is_displayed?(locator)
		begin
			@driver.find_element(locator).displayed?
		rescue Selenium::WebDriver::Error::NoSuchElementError
			false
		end
	end

	def scroll_to(locator)
		@driver.action.move_to(locator)
	end


	def wait_for(seconds = 15)
		Selenium::WebDriver::Wait.new(timeout: seconds).until {yield}
	end

end