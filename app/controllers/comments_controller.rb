# class CommentsController < ApplicationController
#   before_action :set_comment, only: [:show, :edit, :update, :destroy]
#   before_action :find_message, only: [:create, :update, :edit, :destroy]


#   def new
#     @comment = Comment.new
#   end

#   def edit
#   end

#   def create
#     @comment = @message.comments.create(comment_params)
#     @comment.user_id = current_user.id

#     if @comment.save
#       @message.update_attributes!(updated_at: Time.now, replied: true)
#       redirect_to message_path(@message), notice: 'Comment was successfully created.'
#     else
#       render :new
#     end
#   end

#   def update
#     if @comment.update(comment_params)
#        redirect_to @comment, notice: 'Comment was successfully updated.'
#        render :show, status: :ok, location: @comment
#     else
#        render :edit
#     end
#   end

#   def destroy
#     @comment.destroy
#     redirect_to comments_url, notice: 'Comment was successfully destroyed.'
#   end

#   private

#     def find_message
#       @message = Message.find(params[:message_id])
#     end

#     def set_comment
#       @comment = Comment.find(params[:id])
#     end


#     def comment_params
#       params.require(:comment).permit(:content)
#     end
# end
