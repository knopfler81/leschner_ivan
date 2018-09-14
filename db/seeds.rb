# User.destroy_all

# @user = User.create!(username: 'admin',  password: 'password', password_confirmation: 'password')


FinishedGuitar.destroy_all
Progress.destroy_all
Video.destroy_all

puts 'Created user'

counter = 0

20.times do 
	
	FinishedGuitar.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		attachments: [
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_1.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_2.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_3.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_4.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_5.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_6.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_7.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_8.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_9.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_10.jpg")
	].shuffle)
	counter += 1

	puts 'Created Finished guitar n° '  + counter.to_s

end

counter = 0

20.times do 
	
	Progress.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		pictures: [
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_1.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_2.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_3.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_4.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_5.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_6.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_7.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_8.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_9.jpg"),
		open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/seeds/image_10.jpg")
	].shuffle)
	counter += 1

	puts 'Created Progress n° '  + counter.to_s

end



counter = 0

20.times do 
	
Video.create!( 
	url: ["https://www.youtube.com/watch?v=NWdOz9IUGS0","https://www.youtube.com/watch?v=X8zJzBjmrng","https://www.youtube.com/watch?v=Ay-VsCI_4Oc", "https://www.youtube.com/watch?v=R9JOOoqj5P4"].sample ,
	description: Faker::Lorem.paragraph(3)	
	)
	
	counter += 1
puts 'Created Videos n° ' + counter.to_s

end