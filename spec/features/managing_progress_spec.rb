require 'rails_helper'


RSpec.feature "Managing progress" do 

	fixtures :progresses, :user

	context "The admin is logged in" do 

		before :each do
			login_as :admin
		end

		scenario "create progress" do 
			visit new_progress_path
			fill_in "Title", with: "Gibson Les Paul"
			fill_in "Description", with: "Super progresse...."

			within "#prog_label_uploader" do 
				within "#prog_span_uploader" do 
					attach_file("progress[pictures][]", Rails.root.join("spec/assets/images/img_2.jpg"))
				end
			end

			click_on "Create Progress"

			expect(page).to have_content("Progress was successfully created")
		end

		scenario "edit a progress text" do 
			progress = progresses(:fender)
			visit progress_path(progress)

			click_on "Admin Tasks"
			click_on "Edit Text"
			fill_in "Title", with: "Fender Telecaster"
			click_on "Update Progress"

			expect(page).to have_content("Progress was successfully updated")
		end

		scenario "add images for a guitar"  do
			guitar = progresses(:gibson)
			visit progress_path(guitar)

	    click_on "Admin Tasks"
			click_on "Add pictures"

			within "#prog_label_uploader_2" do 
				within "#prog_span_uploader_2" do 
					attach_file("progress[pictures][]" , [Rails.root.join("spec/assets/images/img_1.jpg"), Rails.root.join("spec/assets/images/img_2.jpg") ])
				end
			end

			click_on "Update Progress"
			
			expect(page).to have_content("Successfully added")

		end

		scenario "remove some images from a finished guitar" do
			guitar = progresses(:fender)
			visit progress_path(guitar)

			click_on "Admin Tasks"
			first(:css, ".remove_link").click

			expect(page).to have_content("Picture was successfully destroyed")

		end
	end
end