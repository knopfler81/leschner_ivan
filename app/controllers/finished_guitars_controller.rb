class FinishedGuitarsController < ApplicationController
  protect_from_forgery
  before_action :find_finished_guitar, only: [:show, :destroy, :edit , :update]
  before_action :authenticate_user!, only: [:new, :create, :destroy, :updated, :edit]

  def index
    @finished_guitars = FinishedGuitar.order(created_at: :desc).all
  end

  def show
    set_meta_tags title: @finished_guitar.title,
                  site: 'Leschner Guitars',
                  description: @finished_guitar.description,
                  keywords: ['Ivan Leschner', 'Luthier' , 'Buenos Aires' , 'Argentina'],
                  og: {
                    title: "Leschner Guitars",
                    description: @finished_guitar.description,
                    type: "website",
                    url: finished_guitar_url(@finished_guitar),
                    image: @finished_guitar.attachments.first
                  },
                  twitter: {
                    card: "description",
                    title: @finished_guitar.title,
                    description: @finished_guitar.description,
                    image: @finished_guitar.attachments.first
                  }
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
       format.html { render :new , notice: 'Wooops something went wrong'}
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
      render :edit, alert: "Woops something went wrong"
    end
  end

  def destroy
    @finished_guitar.destroy!
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
