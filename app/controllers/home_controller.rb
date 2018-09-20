class HomeController < ApplicationController

  def index
  	@customization = Customization.instance
  end
end
