class Admin::AttachmentsController < ApplicationController
  before_action :set_finished_guitar

  def create
    add_more_attachments(attachments_params[:attachments])
    flash[:error] = "Failed uploading attachments" unless @finished_guitar.save
    redirect_to @finished_guitar
  end

  def destroy
    remove_attachments_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting attachments" unless @finished_guitar.save
    redirect_to @finished_guitar
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
    remain_attachments = @finished_guitar.attachments # copy the array
    deleted_attachments = remain_attachments.delete_at(index) # delete the target attachments
    deleted_attachments.try(:remove!) # delete attachments from S3
    @finished_guitar.attachments = remain_attachments # re-assign back
  end

  def attachments_params
    params.require(:finished_guitar).permit({attachments: []}) # allow nested params as array
  end
end