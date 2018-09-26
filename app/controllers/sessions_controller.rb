# class SessionsController < ApplicationController
#   def create
#     user = User.find_by_username(session_params[:username])
#     if user && user.authenticate(session_params[:password])
#       session[:current_user_id] = user.id
#       redirect_to root_path
#     else
#       render 'new'
#     end
#   end

#   def destroy
#     session.delete(:current_user_id)
#     redirect_to admin_path
#   end

#   private

#   def session_params
#     params.require(:session).permit(:username, :password)
#   end
# end
