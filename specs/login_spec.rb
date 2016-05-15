require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/login'

describe 'Login' do

	before (:each) do
	@login = Login.new(@driver)
	end
	
	it 'will happen' do
		@login.with('elizldaniels', 'wrap123')
	end

end