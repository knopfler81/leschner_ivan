class ApplicationController < ActionController::Base
	 protect_from_forgery with: :null_session

  # helper_method :current_user

  # def current_user
  #   User.find(session[:current_user_id]) if session[:current_user_id]
  # end

  # def authorize
  #   redirect_to root_path unless current_user
  # end

end
