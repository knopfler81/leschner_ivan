module ResetCustomization
	def reset
		@customization.background_color     = Customization.instance.class.columns_hash['background_color'].default
		@customization.navbar_color         = Customization.instance.class.columns_hash['navbar_color'].default
		@customization.paragraphe_color     = Customization.instance.class.columns_hash['paragraphe_color'].default
		@customization.primary_color        = Customization.instance.class.columns_hash['primary_color'].default
		@customization.secondary_color      = Customization.instance.class.columns_hash['secondary_color'].default
		@customization.big_title_color      = Customization.instance.class.columns_hash['big_title_color'].default
		@customization.menu_color           = Customization.instance.class.columns_hash['menu_color'].default
		@customization.icon_color           = Customization.instance.class.columns_hash['icon_color'].default

		@customization.main_image           = open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/head.jpg")
		@customization.first_section_image  = open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/workinprogress.jpg")
		@customization.second_section_image = open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/finishedguitars.jpg")
		@customization.third_section_image  = open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/media2.jpg")
		@customization.avatar               = open("https://s3-eu-west-1.amazonaws.com/leschnerguitars/images_site/ivan.jpg")

		@customization.save
		redirect_to customization_path, notice: "You have successfully reseted your customization"
	end
end