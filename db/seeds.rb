# User.destroy_all

# num = 0
# 5.times do 
# 	num += 1
# 	User.create!(
# 		email:  "#{num}_user@example.com",
# 		password: "password")
# end

# 10.times do 
# 	Message.create!(
# 		user_id: [3,4,5].sample,
# 		read: false,
# 		replied: false,
# 		subject: "Hello world!!!",
# 		content: "Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nullam cursus lacinia erat. Sed a libero. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Nunc nonummy metus.

# 		Nam at tortor in tellus interdum sagittis. Vivamus euismod mauris. Praesent ac massa at ligula laoreet iaculis. Nunc interdum lacus sit amet orci. Nullam quis ante.

# 	 Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Ut varius tincidunt libero. Curabitur a felis in nunc fringilla tristique. Praesent vestibulum dapibus nibh. Fusce ac felis sit amet ligula pharetra condimentum.")
# end


# FinishedGuitar.destroy_all
# Progress.destroy_all
# Video.destroy_all

# puts 'Created user'

counter = 0

6.times do 
	
	FinishedGuitar.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		attachments: [
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_1.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_2.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_3.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_4.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_5.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_6.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_7.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_8.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_9.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_10.jpg"))
	].shuffle)
	counter += 1

	puts 'Created Finished guitar n° '  + counter.to_s

end

counter = 0

6.times do 
	
	Progress.create!(
		title:  Faker::Music.instrument,
		description: Faker::Lorem.paragraph(3),	
		pictures: [
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_1.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_2.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_3.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_4.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_5.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_6.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_7.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_8.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_9.jpg")),
		File.open(File.join(Rails.root,"app/assets/images/seeds/image_10.jpg"))
	].shuffle)
	counter += 1

	puts 'Created Progress n° '  + counter.to_s

end



counter = 0

6.times do 
	
Video.create!( 
	url: ["https://www.youtube.com/watch?v=NWdOz9IUGS0","https://www.youtube.com/watch?v=X8zJzBjmrng","https://www.youtube.com/watch?v=Ay-VsCI_4Oc", "https://www.youtube.com/watch?v=R9JOOoqj5P4"].sample ,
	description: Faker::Lorem.paragraph(3)	
	)
	
	counter += 1
puts 'Created Videos n° ' + counter.to_s

end