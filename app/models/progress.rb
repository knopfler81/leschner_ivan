class Progress < ApplicationRecord
	mount_uploaders :pictures, PicturesUploader
	validates :title, presence: true
end
