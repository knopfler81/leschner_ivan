class HomeController < ApplicationController

  def index
  	@customization = Customization.instance
  	set_meta_tags site: 'Leschner Guitars',
  	              description: @customization.about,
  	              keywords: ['Ivan Leschner', 'Luthier Buenos Aires', 'Argentina', 'Luthier Leschner']
  end

  def documentation
  	:authenticate_user!
  end
end
