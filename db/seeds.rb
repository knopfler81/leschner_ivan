# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)



# User.destroy_all

# @user = User.create!(username: 'admin',  password: 'password', password_confirmation: 'password')


# FinishedGuitar.destroy_all

# puts 'Created user'

# counter = 0

# 3.times do 
# 	counter += 1
# 	FinishedGuitar.create!( 
# 		user_id: @user.id,
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(2),	
# 		:attachments{
# 			0 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_1.jpg')),
# 			},
# 			1 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_2.jpg')),
# 			},
# 			2 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_3.jpg')),
# 			},
# 			3 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_4.jpg')),
# 			}
# 		}
# 	)
# 	puts 'Created Finished guitar ' + counter.to_s
# end

# 3.times do 
# 	counter += 1
# 	FinishedGuitar.create!( 
# 		user_id: @user.id,
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(2),	
# 		:attachments_attributes => {
# 			0 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_2.jpg')),
# 			},
# 			1 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_1.jpg')),
# 			},
# 			2 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_3.jpg')),
# 			},
# 			3 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_4.jpg')),
# 			}
# 		}
# 	)

# 	puts 'Created Finished guitar ' + counter.to_s
# end


# 3.times do 
# 	counter += 1
# 	FinishedGuitar.create!( 
# 		user_id: @user.id,
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(2),	
# 		:attachments_attributes => {
# 			0 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_3.jpg')),
# 			},
# 			1 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_1.jpg')),
# 			},
# 			2 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_2.jpg')),
# 			},
# 			3 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_4.jpg')),
# 			}
# 		}
# 	)

# 	puts 'Created Finished guitar ' + counter.to_s
# end

# 3.times do 
# 	counter += 1
# 	FinishedGuitar.create!( 
# 		user_id: @user.id,
# 		title:  Faker::Music.instrument,
# 		description: Faker::Lorem.paragraph(2),	
# 		:attachments_attributes => {
# 			0 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_4.jpg')),
# 			},
# 			1 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_3.jpg')),
# 			},
# 			2 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_2.jpg')),
# 			},
# 			3 => {
# 				image:  File.new(Rails.root.join('app/assets/images/seeds/', 'image_1.jpg')),
# 			}
# 		}
# 	)

# 	puts 'Created Finished guitar ' + counter.to_s

# end