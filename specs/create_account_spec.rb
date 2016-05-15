require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/create_wrap'
require_relative '../pages/create_account'


describe 'Create Account' do

	before(:each) do
		@wrap = CreateWrap.new(@driver)
		@account = CreateAccount.new(@driver)
	end
	
	it 'will create an account, then create a wrap' do
		@account.create('Tormund@Westeros.com', 'wrap123', 'Tormund', 'Giantsbane', 'Wildling', '1118675309')
		sleep(10)
		@wrap.with_template()
	end


end