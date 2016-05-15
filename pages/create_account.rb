require 'selenium-webdriver'

class CreateAccount < PageHelper

	PlannAndPricingBtn = { css: 'a:nth-child(3)' }
	FreePlanBtn = { css: '.pricing-cta.ng-scope.ng-isolate-scope' }
	EmailField = { css: 'input.o-auth-input' }
	SubmitBtn = { css: 'form .o-auth-button' }
	SuggestedUsrnm = { css: '.o-auth-link.ng-binding' }
	PasswordField = { css:'input:nth-child(5)' }
	Fname = { css: 'input:nth-child(1)' }
	Lname = { css: 'input:nth-child(2)' }
	Company = { css: 'input:nth-child(3)' }
	Pnumber ={ css: 'input:nth-child(4)' }


	def create(email, password, first, last, work, number)
		click PlannAndPricingBtn
		sleep(3)
		scroll_to FreePlanBtn
		click FreePlanBtn
		sleep(5)
		type EmailField, email
		click SubmitBtn

		sleep(5)
		click SuggestedUsrnm
		type PasswordField, password
		click SubmitBtn

		sleep(5)
		type Fname, first
		type Lname, last
		type Company, work
		type Pnumber, number
		click SubmitBtn
	end

end