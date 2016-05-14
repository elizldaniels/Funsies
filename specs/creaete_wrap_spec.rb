require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/create_wrap'
require_relative '../pages/login'


describe 'Create Wrap' do

	before(:each) do
		@login = Login.new(@driver)
		@wrap = CreateWrap.new(@driver)
	end
	
	it 'will create from a hobby template' do
		@login.with('elizldaniels', 'Monkeyw1!')
		sleep(5)
		@wrap.with_template()
		#expect(@wrap.was_created?).to eql true
	end


end