require "rails_helper"

RSpec.feature "customization" do 

	scenario "updating customization" do 
		login_as :admin

		visit '/customization'

		fill_in "customization[about]", with: "New description"

		click_on "Update Customization"

		expect(page).to have_field('customization[about]', with: 'New description')
	end

end