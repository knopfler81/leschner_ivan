class CustomizationController < ApplicationController
	before_action  :authenticate_user!
	before_action :find_customization
	include ResetCustomization

	
	def show
	end

	def update
	 	if @customization.update_attributes(customization_params)
	 		redirect_to customization_path, notice: "Successfully updated"
	 	else
	 		render :show, alert: "WOOOOOPS"
	 	end
	end

	private
	
		def find_customization
			@customization = Customization.instance
		end


		def customization_params
			params.require(:customization).permit( 
				:main_image, :remove_main_image,
				:first_section_image, :remove_first_section_image,
				:second_section_image, :remove_second_section_image,
				:third_section_image, :remove_first_section_image,
				:background_color,
				:paragraphe_color,
				:navbar_color,
				:primary_color,
				:secondary_color,
				:big_title_color,
				:navbar_links_color,
				:menu_color,
				:icon_color,
				:about,
				:avatar
				)
		end
	
end