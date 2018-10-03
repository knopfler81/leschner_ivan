class CustomizationController < ApplicationController
	before_action  :authenticate_user!
	before_action :find_customization

	
	def show
	end

	def update
	 	if @customization.update_attributes(customization_params)
	 		redirect_to customization_path, notice: "Successfully updated"
	 	else
	 		render :show, alert: "WOOOOOPS"
	 	end
	end

	def reset
		@customization.background_color = Customization.instance.class.columns_hash['background_color'].default
		@customization.navbar_color     = Customization.instance.class.columns_hash['navbar_color'].default
		@customization.paragraphe_color = Customization.instance.class.columns_hash['paragraphe_color'].default
		@customization.primary_color    = Customization.instance.class.columns_hash['primary_color'].default
		@customization.secondary_color  = Customization.instance.class.columns_hash['secondary_color'].default
		@customization.big_title_color  = Customization.instance.class.columns_hash['big_title_color'].default
		@customization.menu_color       = Customization.instance.class.columns_hash['menu_color'].default
		@customization.icon_color       = Customization.instance.class.columns_hash['icon_color'].default
		@customization.save
		redirect_to customization_path, notice: "You have successfully reseted your customization"
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