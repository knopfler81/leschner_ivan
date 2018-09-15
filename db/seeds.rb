require "open-uri"
# User.destroy_all

# @user = User.create!(username: 'admin',  password: 'password', password_confirmation: 'password')


# FinishedGuitar.destroy_all
# Progress.destroy_all
# Video.destroy_all


3.times do 

		FinishedGuitar.create!( 
			title:  Faker::Music.instrument,
			description: Faker::Lorem.paragraph(10),	
			attachments:[ open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_1.jpg", 
				open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_2.jpg"))
			])
end

# 20.times do 
# 	FinishedGuitar.create!( 
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(10),	
# 		attachments: 
# 		 [  Rails.root.join("app/assets/images/seeds/image_1.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_2.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_3.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_4.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_5.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_6.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_7.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_8.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_9.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_10.jpg").open,
# 				].shuffle)
# 	print "_"
# end

# puts 'Created Finished guitars '


# 20.times do 
# 	Progress.create!( 
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(10),	
# 		pictures: 
# 		 [  Rails.root.join("app/assets/images/seeds/image_1.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_2.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_3.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_4.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_5.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_6.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_7.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_8.jpg").open,
# 				Rails.root.join("app/assets/images/seeds/image_9.jpg").open, 
# 				Rails.root.join("app/assets/images/seeds/image_10.jpg").open,
# 				].shuffle)
# 	print "_"
# end

# puts 'Created Work in progress '


# 20.times do 
	
# Video.create!( 
# 	url: ["https://www.youtube.com/watch?v=NWdOz9IUGS0","https://www.youtube.com/watch?v=X8zJzBjmrng","https://www.youtube.com/watch?v=Ay-VsCI_4Oc", "https://www.youtube.com/watch?v=R9JOOoqj5P4"].sample ,
# 	description: Faker::Lorem.paragraph(3)	
# 	)
# print "_"


# end
# puts 'Created Videos '

