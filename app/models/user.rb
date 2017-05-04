class User < ApplicationRecord

has_secure_password

	has_many :posts
	has_many :comments
	has_many :favorites
	has_many :ratings
	
	validates :first_name, length: { minimum: 2 }
	validates :last_name, length: { minimum: 2 }
	validates :email, uniqueness: true
	validates :password, length: { in: 6..20 }
end
