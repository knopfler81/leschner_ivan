class FinishedGuitar < ApplicationRecord
	mount_uploaders :attachments, AttachmentUploader
end
