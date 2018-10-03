class Customization < ApplicationRecord
	include ActiveModel::Validations

	attr_accessor :avatar, :main_image, :first_section_image, :second_section_image, :third_section_image


	mount_uploader :avatar, 							AvatarUploader
	mount_uploader :main_image, 				  MainImageUploader
	mount_uploader :first_section_image,  FirstSectionImageUploader
	mount_uploader :second_section_image, SecondSectionImageUploader
	mount_uploader :third_section_image,  ThirdSectionImageUploader
 
	validates :avatar,               file_size: { less_than: 0.5.megabytes }
	validates :main_image, 					 file_size: { less_than: 0.5.megabytes } 
	validates :first_section_image,  file_size: { less_than: 0.5.megabytes }
	validates :second_section_image, file_size: { less_than: 0.5.megabytes }
	validates :third_section_image,  file_size: { less_than: 0.5.megabytes }


	# [:avatar, :main_image, :first_section_image, :second_section_image, :third_section_image].each do |meth|
	#  	define_method "#{meth}_error" do
 #  		errors.messages[meth.to_sym] <<  "The image should be 1Mo max"
 #  	end
 #  end


	INSTANCE_ID =  87

	def self.instance
		Customization.find_or_create_by(id: INSTANCE_ID)
	end
end
