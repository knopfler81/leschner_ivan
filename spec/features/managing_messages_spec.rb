#message et comment sont mis de côté pour le moment.

# require "rails_helper"

# RSpec.feature "managing messages and comments" do
# 	fixtures :users, :messages

# 	context "Visitor logged in" do 

# 		scenario "wants to send a message to the website owner" do 
# 			nelly = users(:nelly)
# 			login_as(nelly)

# 			visit new_message_path

# 			fill_in "Subject", with: 'Hey'
# 			fill_in "Content", with: 'Hola como esta?'

# 			click_on "Create Message"

# 			expect(page).to have_content("Message was successfully created.")
# 		end
# 	end

# 	context "Admin is logged in" do 
		
# 		before :each do 
# 			admin = users(:admin)
# 			login_as(admin)
# 			@mess = messages(:info)
# 		end
		
# 		scenario "read a received message" do 
# 			visit message_path(@mess)
# 			expect(page).to have_content("Need info")
# 		end

# 		scenario "replies to a message", :js do 
# 			visit message_path(@mess)
# 			fill_in "comment[content]", with: "Hey I am calling you!"
# 			click_on "Create Comment"
# 			expect(page).to have_content("Comment was successfully created.")
# 			expect(page).to have_content("Hey I am calling you!")
# 		end
# 	end
# end 