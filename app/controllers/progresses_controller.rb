class ProgressesController < ApplicationController
	before_action :find_progress , only: [:show, :edit, :update, :destroy]

	def index
		@progresses = Progress.all 
	end


	def show
	end

	def new
		@progress = Progress.new
	end

	def create
		@progress = Progress.new(progress_params)
		if @progress.save 
			redirect_to @progress, notice: "Progress was successfully created"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @progress.update(progress_params)
      redirect_to @progress, notice: "Progress was successfully updated"
    else
      render :edit
    end
	end

	private

		def find_progress
			@progress = Progress.find(params[:id])
		end

		def progress_params
			params.require(:progress).permit(:title, :description, {pictures: []})
		end
end
