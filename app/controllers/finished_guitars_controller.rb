class FinishedGuitarsController < ApplicationController

	def index
		@finished_guitars = FinishedGuitar.all
	end

	def show
		@finished_guitar = FinishedGuitar.find(params[:id])
	end

	def new
		@finished_guitar = FinishedGuitar.new
		@attachment = @finished_guitar.attachments.build
	end

	def create	
		@finished_guitar = FinishedGuitar.new(finished_guitar_params)
    respond_to do |format|
      if @finished_guitar.save
      	unless params[:attachments].nil?
      		params[:attachments]['image'].each do |a|
      			 @attachment = @finished_guitar.attachments.create!(:image => a, :finished_guitar_id => @finished_guitar.id)
      		end
      	end
        format.html { redirect_to @finished_guitar, notice: 'Guitartest was successfully created.' }
        format.json { render :show, status: :created, location: @finished_guitar }
      else
        format.html { render :new }
        format.json { render json: @finished_guitar.errors, status: :unprocessable_entity }
      end
    end
	end
	
	def update
	end

	def edit
	end

	def destroy
		@finished_guitar = FinishedGuitar.find(params[:id])
		@finished_guitar.destroy
	end


	private
		def finished_guitar_params
			params.require(:finished_guitar).permit(:title, :description, attachments_attributes: [:id, :image, :finished_guitar_id])
		end
end
