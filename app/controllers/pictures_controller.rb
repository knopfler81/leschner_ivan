class PicturesController < ApplicationController
  before_action :set_progress

  def create
    add_more_pictures(pictures_params[:pictures])
    if @progress.save
      redirect_to @progress, notice: "Successfully added"
    else
      flash[:error] = "Failed uploading pictures"
    end
  end

  def destroy
    remove_pictures_at_index(params[:id].to_i)
    if @progress.save
      redirect_to @progress, notice: "Picture was successfully destroyed"
    else
      flash[:error] = "Failed deleting pictures"
    end
  end

  private

  def set_progress
    @progress = Progress.find(params[:progress_id])
  end

  def add_more_pictures(new_pictures)
    pictures = @progress.pictures 
    pictures += new_pictures
    @progress.pictures = pictures
  end

  def remove_pictures_at_index(index)
    remain_pictures = @progress.pictures
    deleted_pictures = remain_pictures.delete_at(index)
    deleted_pictures.try(:remove!)
    @progress.pictures = remain_pictures
  end

  def pictures_params
    params.require(:progress).permit({pictures: []})
  end
end