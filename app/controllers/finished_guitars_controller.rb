class FinishedGuitarsController < ApplicationController

  before_action :find_finished_guitar, only: [:show, :destroy, :edit , :update]
  before_action :authorize, only: [:new, :create, :destroy]

  def index
    @finished_guitars = FinishedGuitar.order(created_at: :desc).all
  end

  def show
  end

  def new
    @finished_guitar = FinishedGuitar.new
  end

  def create
   @finished_guitar = FinishedGuitar.new(finished_guitar_params)

     respond_to do |format|
       if @finished_guitar.save
         format.html { redirect_to @finished_guitar, notice: 'Guitar was successfully created.' }
         format.json { render :show, status: :created, location: @finished_guitar }
       else
         format.html { render :new }
         format.json { render json: @finished_guitar.errors, status: :unprocessable_entity }
       end
     end
  end

  def edit
  end

  def update
    if @finished_guitar.update(finished_guitar_params)
      redirect_to @finished_guitar, notice: "Guitar was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @finished_guitar.destroy
    redirect_to finished_guitars_path, notice: "Guitar was successfully destroyed"
  end

  private

    def finished_guitar_params
      params.require(:finished_guitar).permit(:id, :title, :description, {attachments:[]})
    end

    def find_finished_guitar
      @finished_guitar = FinishedGuitar.find(params[:id])
    end


end
