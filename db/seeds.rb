# User.destroy_all

# @user = User.create!(username: 'admin',  password: 'password', password_confirmation: 'password')


FinishedGuitar.destroy_all
Progress.destroy_all
Video.destroy_all

puts 'Created user'

counter_1 = 0
3.times do 
	counter_1 += 1
FinishedGuitar.create!( 
	title:  Faker::Music.instrument,
	description: Faker::Lorem.paragraph(3),	
	attachments: [  File.open(File.join(Rails.root,'app/assets/images/seeds/image_1.jpg')), 
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_2.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_3.jpg'))].shuffle)
puts 'Created Finished guitars ' + counter_1.to_s

end


6.times do 
	counter_1 += 1
	FinishedGuitar.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		attachments: [
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_4.jpg')),
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_5.jpg')), 
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_6.jpg')),
	])

	puts 'Created Finished guitar '  + counter_1.to_s

end

counter_1 = 0
6.times do 
	counter_1 += 1
	FinishedGuitar.create!( 
	title:  Faker::Music.instrument,
	description: Faker::Lorem.paragraph(3),	
	attachments: [  File.open(File.join(Rails.root,'app/assets/images/seeds/image_5.jpg')), 
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_6.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_7.jpg'))].shuffle)
puts 'Created Finished guitars ' + counter_1.to_s

end


6.times do 
	counter_1 += 1
	FinishedGuitar.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		attachments: [
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_8.jpg')),
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_9.jpg')), 
		File.open(File.join(Rails.root,'app/assets/images/seeds/image_10.jpg')),
	])

	puts 'Created Finished guitar '  + counter_1.to_s

end

counter_2 = 0
6.times do 
	counter_2 += 1
Progress.create!( 
	title:  Faker::Music.instrument,
	description: Faker::Lorem.paragraph(2),	
	pictures: [  File.open(File.join(Rails.root,'app/assets/images/seeds/image_1.jpg')), 
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_2.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_3.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_4.jpg'))
							].shuffle)


puts 'Created Progresses ' + counter_2.to_s

end

counter_2 = 0
6.times do 
	counter_2 += 1
Progress.create!( 
	title:  Faker::Music.instrument,
	description: Faker::Lorem.paragraph(2),	
	pictures: [  File.open(File.join(Rails.root,'app/assets/images/seeds/image_5.jpg')), 
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_6.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_7.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_8.jpg'))
							].shuffle)


puts 'Created Progresses ' + counter_2.to_s

end

counter_2 = 0
6.times do 
	counter_2 += 1
Progress.create!( 
	title:  Faker::Music.instrument,
	description: Faker::Lorem.paragraph(2),	
	pictures: [  File.open(File.join(Rails.root,'app/assets/images/seeds/image_10.jpg')), 
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_9.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_1.jpg')),
									File.open(File.join(Rails.root,'app/assets/images/seeds/image_6.jpg'))
							].shuffle)


puts 'Created Progresses ' + counter_2.to_s

end



counter_3 = 0
20.times do 
	counter_3 += 1
Video.create!( 
	url: ["https://www.youtube.com/watch?v=NWdOz9IUGS0","https://www.youtube.com/watch?v=X8zJzBjmrng","https://www.youtube.com/watch?v=Ay-VsCI_4Oc", "https://www.youtube.com/watch?v=R9JOOoqj5P4"].sample,
	description: Faker::Lorem.paragraph(3)	
	)


puts 'Created Videos ' + counter_3.to_s

end