class User < ApplicationRecord
	has_secure_password
	has_many :finished_guitars
	validates :username, presence: true, uniqueness: true
end
