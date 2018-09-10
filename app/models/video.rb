class Video < ApplicationRecord

	before_save :embed
	validates :url, presence: true, format: {with: (/\Ahttps?:\/\/(?:www\.)?youtube.com\/watch\?(?=.*v=\w+)(?:\S+)?\z/)}

	def embed
	 self.url = self.url.sub("watch?v=", "embed/")
	end

end