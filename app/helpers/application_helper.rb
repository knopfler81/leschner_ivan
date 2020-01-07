module ApplicationHelper

	def prefered_background_color
		return Customization.instance.background_color if Customization.instance.background_color.present?
		'#E2E2E2'
	end

	def prefered_navbar_color
		return Customization.instance.navbar_color if Customization.instance.navbar_color.present?
		'#141414'
	end

	def prefered_primary_color
		return Customization.instance.primary_color if Customization.instance.primary_color.present?
		'#AB813E'
	end

	def prefered_secondary_color
		return Customization.instance.secondary_color if Customization.instance.secondary_color.present?
		'#AB813E'
	end

	def prefered_navbar_links_color
		return Customization.instance.navbar_links_color if Customization.instance.navbar_links_color.present?
		'#fff'
	end

	def prefered_paragraphe_color
		return Customization.instance.paragraphe_color if Customization.instance.paragraphe_color.present?
		'#AB813E'
	end
	
	def prefered_big_title_color
		return Customization.instance.big_title_color if Customization.instance.big_title_color.present?
		'#000'
	end

	def admin_connected?
		true if (user_signed_in? && current_user.admin?)
	end
end
