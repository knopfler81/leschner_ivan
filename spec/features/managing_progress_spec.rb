require 'rails_helper'

RSpec.feature "Managing progress" do 

	fixtures :progresses, :users

	context "The admin is logged in" do 

		before :each do
			login_as :admin
		end

		scenario "create progress" do 
			visit new_progress_path
			fill_in "progress[title]", with: "Gibson Les Paul"
			fill_in "progress[description]", with: "Super progresse...."

			within "#prog_label_uploader" do 
				within "#prog_span_uploader" do 
					attach_file("progress[pictures][]", Rails.root.join("spec/assets/images/img_2.jpg"))
				end
			end

			click_on "Create Progress"

			expect(page).to have_content("Work In Progress was successfully created")
		end

		scenario "edit a progress text", :js do 
			progress = progresses(:fender)
			visit progress_path(progress)

			find(".fa-edit").click

			fill_in "progress[title]", with: "Fender Telecaster"
			click_on "Update Me"

			expect(page).to have_content("Work In Progress was successfully updated")
		end

		scenario "add images for a guitar"  do
			guitar = progresses(:gibson)
			visit progress_path(guitar)

			find(".edit_link").click
			click_on "Add pictures"

			within "#prog_label_uploader_2" do 
				within "#prog_span_uploader_2" do 
					attach_file("progress[pictures][]" , [Rails.root.join("spec/assets/images/img_1.jpg"), Rails.root.join("spec/assets/images/img_2.jpg") ])
				end
			end

			click_on "Update"
			
			expect(page).to have_content("Successfully added")

		end

		scenario "remove some images from a progress" do
			guitar = progresses(:gibson)
			visit progress_path(guitar)

			find(".edit_link").click
			first(:css, ".delete_img_link").click

			expect(page).to have_content("Picture was successfully destroyed")
		end

		scenario "remove progress article and its pictures" do
			guitar = progresses(:leschner)
			visit progress_path(guitar)

			find(".delete_link").click

			expect(page).to have_content("Work In Progress was successfully destroyed")
		end

	end
end