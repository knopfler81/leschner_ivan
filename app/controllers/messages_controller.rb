# class MessagesController < ApplicationController
#   before_action :set_message, only: [:show, :edit, :update, :destroy]
#   before_action :authenticate_user!

#   def index
#     if current_user.admin?
#       @messages = Message.all.sort_by(&:updated_at).reverse!
#     else
#       @messages = Message.all.where(user_id: current_user.id).sort_by(&:updated_at).reverse!
#     end
#   end

#   def show
#   end

#   def new
#     @message = Message.new
#   end

#   def edit
#   end

#   def create
#     @message = Message.new(message_params)
#     @message.user_id = current_user.id

#     respond_to do |format|
#       if @message.save
#         format.html { redirect_to @message, notice: 'Message was successfully created.' }
#         format.json { render :show, status: :created, location: @message }
#       else
#         format.html { render :new }
#         format.json { render json: @message.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   def update
#     respond_to do |format|
#       if @message.update(message_params)
#         format.html { redirect_to @message, notice: 'Message was successfully updated.' }
#         format.json { render :show, status: :ok, location: @message }
#       else
#         format.html { render :edit }
#         format.json { render json: @message.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   def destroy
#     @message.destroy
#     respond_to do |format|
#       format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private

#     def set_message
#       if current_user.admin?
#         @message = Message.find(params[:id])
#       else
#         @message = Message.where(user_id: current_user.id).first
#       end
#     end


#     def message_params
#       params.require(:message).permit(:subject, :content, :user_id, :read, :replied)
#     end
# end
