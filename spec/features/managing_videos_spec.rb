require "rails_helper"

RSpec.feature "managing videos" do 

	fixtures :users

	context "The admin is logged in" do 

		before :each do
			login_as :admin
		end

		scenario "create a new video" do 
			visit new_video_path
			fill_in "video[url]", with: "https://www.youtube.com/watch?v=oWYKTiqPvYA"
			click_on "Submit"
			expect(page).to have_content("Video was successfully created")
		end

		scenario "edit a video" do 
			my_video =  Video.create(url: "https://www.youtube.com/watch?v=Yozj4ZB98Gg")

			visit videos_path
			first(:css, ".edit_link").click

			fill_in "video[url]", with: "https://www.youtube.com/watch?v=UxIPVAPRBi4"
			click_on "Submit"

			expect(page).to have_content("Video was successfully updated")
		end

		scenario "delete a video" do
			video_1 =  Video.create(url: "https://www.youtube.com/watch?v=Yozj4ZB98Gg")
			video_2 =  Video.create(url: "https://www.youtube.com/watch?v=UxIPVAPRBi4")

			visit videos_path

			first(:css, ".delete_link").click

			expect(page).to have_content("Video was successfully destroyed")
		end
	end
end