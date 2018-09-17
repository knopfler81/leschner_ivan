class AttachmentsController < ApplicationController
  protect_from_forgery

  before_action :set_finished_guitar

  def create
    add_more_attachments(attachments_params[:attachments])
    if @finished_guitar.save
      redirect_to edit_finished_guitar_path(@finished_guitar), notice: "Successfully added"
    else
      flash[:error] = "Failed uploading attachments"
    end
  end

  def destroy
    remove_attachments_at_index(params[:id].to_i)
    if @finished_guitar.save 
      redirect_to edit_finished_guitar_path(@finished_guitar), notice: "Picture was successfully destroyed"
    else
      flash[:error] = "Failed deleting attachments"
    end
  end

  private

  def set_finished_guitar
    @finished_guitar = FinishedGuitar.find(params[:finished_guitar_id])
  end

  def add_more_attachments(new_attachments)
    attachments = @finished_guitar.attachments 
    attachments += new_attachments
    @finished_guitar.attachments = attachments
  end

  def remove_attachments_at_index(index)
    remain_attachments = @finished_guitar.attachments
    if index == 0 && @finished_guitar.attachments.size == 1
      @finished_guitar.remove_attachments!
    end
    deleted_attachments = remain_attachments.delete_at(index)
    deleted_attachments.try(:remove!)
    @finished_guitar.attachments = remain_attachments
  end

  def attachments_params
    params.require(:finished_guitar).permit({attachments: []})
  end
end