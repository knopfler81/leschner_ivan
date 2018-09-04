class FinishedGuitar < ApplicationRecord
	has_many :attachments, dependent: :destroy
	belongs_to :user
	accepts_nested_attributes_for :attachments
end
