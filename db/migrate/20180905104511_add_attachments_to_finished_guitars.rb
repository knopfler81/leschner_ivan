class AddAttachmentsToFinishedGuitars < ActiveRecord::Migration[5.2]
  def change
    add_column :finished_guitars, :attachments, :json
  end
end
