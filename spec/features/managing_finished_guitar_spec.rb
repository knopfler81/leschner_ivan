require "rails_helper"

RSpec.feature "managing finished guitar" do 

	fixtures :finished_guitars, :user

	context "The admin is logged in" do 

		before :each do
			login_as :admin
		end

		scenario "create a new guitar" do 
			visit new_finished_guitar_path
			fill_in "Title", with: "Gibson Les Paul"
			fill_in "Description", with: "Super guitare...."

			within "#label_uploader" do 
				within "#span_uploader" do 
					attach_file("finished_guitar[attachments][]" , Rails.root.join("spec/assets/images/img_2.jpg"))
				end
			end

			click_on "Create Finished guitar"

			expect(page).to have_content("Guitar was successfully created")
		end

		scenario "edit a guitar text" do 
			guitar = finished_guitars(:fender)

			visit finished_guitar_path(guitar)

			click_on "Admin Tasks"
			click_on "Edit Text"

			fill_in "Title", with: "Fender Telecaster"

			click_on "Update Finished guitar"

			expect(page).to have_content("Guitar was successfully updated")
		end

		scenario "add images for a guitar"  do
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			click_on "Add pictures"

			within "#label_uploader_2" do 
				within "#span_uploader_2" do 
					attach_file("finished_guitar[attachments][]" , Rails.root.join("spec/assets/images/img_2.jpg"))
				end
			end

			click_on "Update Finished guitar"
			
			expect(page).to have_content("Successfully added")
		end

		scenario "remove some images from a finished guitar" do
			guitar = finished_guitars(:fender)
			visit finished_guitar_path(guitar)

			click_on "Admin Tasks"
			first(:css, ".remove_link").click

			expect(page).to have_content("Picture was successfully destroyed")
		end
	end
end