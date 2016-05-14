require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/login'

describe 'Login' do

	before (:each) do
	@login = Login.new(@driver)
	end
	
	it 'will happen' do
		@login.with('elizldaniels', 'Monkeyw1!')
#TODO ADD A WAIT FOR IN THIS SECTION TO ACCOUNT FOR TIME LAPSE
		sleep(5)
		expect(@login.success?).to eql true
	end

end