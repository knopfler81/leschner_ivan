class HomeController < ApplicationController

  def index
  	@customization = Customization.instance
  end

  def documentation
  	:authenticate_user!
  end
end
