require 'selenium-webdriver'
require_relative 'page_helper'

class CreateWrap < PageHelper

	CreateWrapBtn = { css: 'button.wraps_create-btn' }
	HobbyCategory = { css: 'div:nth-child(7)' }
	CreatePetWrap = { css: 'wm-card-group:nth-child(6) button.btn.btn-success.ng-binding' }
	PublishBtn = {css: 'div:nth-child(9) button' }
	ModalClose = {css: '.modal-footer button' }
	BackHome = { css: '.action-bar_item.action-bar_item--narrow button' }

	CloseAdd = {css: '.help-tour_nav.help-tour_nav--close'}

	NewWrap = { css: '.lazy-load_container.ng-scope'}


	def initialize(driver)
		super
	end


	def with_template()
		click CreateWrapBtn
		wait_for(15) { is_displayed? HobbyCategory }
		scroll_to HobbyCategory
		click HobbyCategory
		wait_for(5) { is_displayed? CreatePetWrap }
		scroll_to CreatePetWrap
		click CreatePetWrap
		wait_for(5) { is_displayed? CloseAdd }
		click CloseAdd
		sleep(3)
		click PublishBtn
		wait_for(60) { is_displayed? CloseAdd }
		click CloseAdd
		click ModalClose
		sleep(3)
		click BackHome
	end
	

end