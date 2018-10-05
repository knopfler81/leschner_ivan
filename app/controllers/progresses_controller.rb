class ProgressesController < ApplicationController
	protect_from_forgery
	before_action :find_progress, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :destroy]

	def index
		@progresses = Progress.order(created_at: :desc).all
	end

	def show
		set_meta_tags  title: @progress.title,
									  site: 'Leschner Guitars',
									  description: @progress.description,
									  keywords: ['Ivan Leschner', 'Luthier' , 'Buenos Aires' , 'Argentina'],
									  og: {
									    title: "Leschner Guitars",
									    description: @progress.description,
									    type: "website",
									    url: progress_url(@progress),
									    image: @progress.pictures.first
									  },
									  twitter: {
									    card: "description",
									    title: @progress.title,
									    description: @progress.description,
									    image: @progress.pictures.first
									  }
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
