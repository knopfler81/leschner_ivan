class ProgressesController < ApplicationController
	protect_from_forgery
	before_action :find_progress, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :destroy]

	def index
		@progresses = Progress.order(created_at: :desc).all
	end

	def show
	end

	def new
		@progress = Progress.new
	end

	def create
		@progress = Progress.new(progress_params)
		if @progress.save 
			redirect_to @progress, notice: "Work In Progress was successfully created"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @progress.update(progress_params)
      redirect_to @progress, notice: "Work In Progress was successfully updated"
    else
      render :edit
    end
	end

	def destroy
		@progress.destroy!
		redirect_to progresses_path, notice: "Work In Progress was successfully destroyed"
	end

	private

		def find_progress
			@progress = Progress.find(params[:id])
		end

		def progress_params
			params.require(:progress).permit(:title, :description, {pictures: []})
		end
end
