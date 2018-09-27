class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :trackable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :messages
	has_many :comments
	
	validates :email, presence: true, uniqueness: true

	devise :database_authenticatable, :registerable,
	        :recoverable, :rememberable, :trackable, :validatable
end
