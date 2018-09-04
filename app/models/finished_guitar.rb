class FinishedGuitar < ApplicationRecord
	#belongs_to :user
	mount_uploaders :attachments, AttachmentUploader

end
