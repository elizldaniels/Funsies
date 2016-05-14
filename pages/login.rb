require 'selenium-webdriver'
require_relative 'page_helper'

class Login < PageHelper

	LoginBtn = { css: '.global-nav_links--auth a:nth-child(1)' }
	UsernameField = { css: 'input:nth-child(3)' }
	PasswordField = { css: 'input:nth-child(4)' }
	SubmitBtn = { css: 'form button' }

	Avatar = { css: '.avatar'}
	CreateWrapBtn = { css: 'button.wraps_create-btn' }

#wrap-header > header > div > div.global-nav_section.global-nav_section--right > div > div > nav > a:nth-child(1)


	def initialize(driver)
		super
	end


	def with(username, password)
		click LoginBtn
		wait_for(5) { is_displayed? UsernameField }
		type UsernameField, username
		type PasswordField, password
		click SubmitBtn
	end

	def success?
		is_displayed? Avatar
	end

end
