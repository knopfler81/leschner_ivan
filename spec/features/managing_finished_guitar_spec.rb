require "rails_helper"

RSpec.feature "managing finished guitar" do 

	fixtures :finished_guitars, :users

	context "The admin is logged in" do 

		before :each do
			login_as :admin
		end

		scenario "create a new guitar", :js do 

			visit new_finished_guitar_path
			fill_in "Title", with: "Gibson Les Paul"
			fill_in "Enter a description", with: "Super guitar...."

			attach_file("finished_guitar[attachments][]" , Rails.root.join("spec/assets/images/img_2.jpg"))

			click_on "Create Finished guitar"

			expect(page).to have_content("Guitar was successfully created")
		end

		scenario "edit a finished guitar text", :js do 
			#la fave icon doit etre dans le dossier public
			guitar = finished_guitars(:fender)
			visit finished_guitar_path(guitar)

			find(".edit_link").click

			fill_in "finished_guitar[title]", with: "Fender Telecaster"

			click_on "Update Me"

			expect(page).to have_content("Guitar was successfully updated")
		end

		scenario "add images for a guitar", :skip do
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			find(".edit_link").click

			click_on "Add pictures"


			attach_file("finished_guitar[attachments][]" , Rails.root.join("spec/assets/images/img_2.jpg"))


			click_on "Update"
			
			expect(page).to have_content("Successfully added")
		end

		scenario "remove some images from a finished guitar", :skip do
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			find(".edit_link").click

			first(:css, ".delete_img_link").click

			expect(page).to have_content("Picture was successfully destroyed")
		end

		scenario "remove an article and its attachments" do 
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			find(".delete_link").click

			expect(page).to have_content("Guitar was successfully destroyed")
		end
	end

	context "admin is not logged in" do 

		scenario "should not see the edit button" do 
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			expect(page).not_to have_css('.edit_link')
		end

	end
end