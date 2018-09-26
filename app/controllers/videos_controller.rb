class VideosController < ApplicationController

	before_action :find_video, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :destroy]

	def index 
		@videos = Video.order(created_at: :desc).all
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
	  respond_to do |format|
	    if @video.save
	      format.html { redirect_to videos_path, notice: 'Video was successfully created.' }
	      format.json { render :index, status: :created, location: @videos }
	    else
	      format.html { render :new }
	      format.json { render json: @video.errors, status: :unprocessable_entity }
	    end
	  end
	end


	def edit
	end

	def update
		if @video.update(video_params)
			redirect_to videos_path, notice: 'Video was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@video.destroy!
		redirect_to videos_path, notice: "Video was successfully destroyed"
	end


	private

		def find_video
			@video = Video.find(params[:id])
		end

		def video_params
			params.require(:video).permit(:url, :description)
		end
end
