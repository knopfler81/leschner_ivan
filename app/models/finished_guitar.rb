class FinishedGuitar < ApplicationRecord
	mount_uploaders :attachments, AttachmentUploader
	validates :title, presence: true 

	validate :attachments_size

	 private
	  def attachments_size
	    size_array = self.attachments.collect { |e| e.size }
	    if size_array.inject(0, :+) >  5.megabytes
	      errors.add(:attachments, "should be less than 5MB")
	    end
	  end

end
