class Progress < ApplicationRecord
	mount_uploaders :pictures, PicturesUploader
	validates :title, presence: true

	validate :attachments_size

	 private
	  def attachments_size
	    size_array = self.pictures.collect { |e| e.size }
	    if size_array.inject(0, :+) >  5.megabytes
	      errors.add(:pictures, "should be less than 5MB")
	    end
	  end
end
