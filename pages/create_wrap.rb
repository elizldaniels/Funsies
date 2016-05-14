require 'selenium-webdriver'
require_relative 'page_helper'

class CreateWrap < PageHelper

	CreateWrapBtn = { css: 'button.wraps_create-btn' }
	HobbyCategory = { css: 'div:nth-child(7)' }
	CreatePetWrap = { css: 'wm-card-group:nth-child(6) button.btn.btn-success.ng-binding' }
	PublishBtn = {css: 'div:nth-child(9) button' }
	ModalClose = {css: '.modal-footer button' }
	BackHome = { css: '.action-bar_item.action-bar_item--narrow button' }

	NewWrap = { css: '.wrap-grid-item_thumbnail'}


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
		wait_for(5) { is_displayed? PublishBtn }
		click PublishBtn
		wait_for(60) { is_displayed? ModalClose }
		click ModalClose
		sleep(3)
		click BackHome
	end

	def was_created?()
		is_displayed? NewWrap
	end




end