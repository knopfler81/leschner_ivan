class FinishedGuitarsController < ApplicationController

  before_action :find_finished_guitar, only: [:show, :destroy]
  before_action :authorize, only: [:new, :create, :destroy]

  def index
    @finished_guitars = FinishedGuitar.all
  end

  def show
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
            @attachment = @finished_guitar.attachments.create!(:image => a)
          end
        end
        format.html { redirect_to @finished_guitar, notice: 'Guitar was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
    @finished_guitar.destroy
    redirect_to finished_guitars_path
  end

  private

    def finished_guitar_params
      params.require(:finished_guitar).permit(:id, :title, :description, attachments_attributes: [:id, :image, :finished_guitar_id])
    end

    def find_finished_guitar
      @finished_guitar = FinishedGuitar.find(params[:id])
    end


end
