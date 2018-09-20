class Customization < ApplicationRecord
	mount_uploader :avatar, 							AvatarUploader
	mount_uploader :main_image, 				  MainImageUploader
	mount_uploader :first_section_image,  FirstSectionImageUploader
	mount_uploader :second_section_image, SecondSectionImageUploader
	mount_uploader :third_section_image,  ThirdSectionImageUploader

	INSTANCE_ID =  87

	def self.instance
		Customization.find_or_create_by(id: INSTANCE_ID)
	end



	# def third_section_image_url(customization)
	# 	if customization.third_section_image_url.present?
	# 		customization.third_section_image_url
	# 	end
	# end
	
end
