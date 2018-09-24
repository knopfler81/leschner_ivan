class CustomizationController < ApplicationController
	before_action  :authorize
	
	def show
		@customization = Customization.instance
	end

	def update
	 	@customization = Customization.instance
	 	if @customization.update(customization_params)
	 		redirect_to customization_path, notice: "Successfully updated"
	 	end
	end

	private

	def customization_params
		params.require(:customization).permit( 
			:main_image, :remove_main_image,
			:first_section_image, :remove_first_section_image,
			:second_section_image, :remove_second_section_image,
			:third_section_image, :remove_first_section_image,
			:menu_color,
			:body_color,
			:icon_color,
			:about,
			:avatar
			)
	end
end