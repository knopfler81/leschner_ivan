class AddAttachmentImagesToAttachments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :attachments do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :attachments, :images
  end
end
