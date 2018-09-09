class FinishedGuitar < ApplicationRecord
	mount_uploaders :attachments, AttachmentUploader
	validates :title, presence: true 
end
