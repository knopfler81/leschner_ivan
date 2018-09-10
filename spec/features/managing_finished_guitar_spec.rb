require "rails_helper"

RSpec.feature "managing finished guitar" do 

	fixtures :finished_guitars

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
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			click_on "Admin Tasks"
			click_on "Edit Text"
			fill_in "Title", with: "Fender Stratocaster"
			click_on "Update Finished guitar"

			expect(page).to have_content("Guitar was successfully updated")
		end

		scenario "add images for a guitar", :skip do 
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			click_on "Add pictures"

			within "#label_uploader_2" do 
				within "#span_uploader_2" do 
					attach_file("finished_guitar[attachments][]" , Rails.root.join("spec/assets/images/img_2.jpg"))
				end
			end

			click_on "Update Finished guitar"
			expect(guitar.attachments.count).to eq(3)

		end


		scenario "remove some images from a finished guitar", :skip do
			guitar = finished_guitars(:gibson)
			visit finished_guitar_path(guitar)

			puts guitar.attachments.count.to_s + " => nombre d'images au départ"

			click_on "Admin Tasks"
			first(:css, ".remove_link").click

			
			puts guitar.attachments.count.to_s + " => nombre d'image à la fin"

			#expect(guitar.attachments.count).to eq(0)

		end

	end
end