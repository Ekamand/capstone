class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :ratings
	has_many :favorites

	validates :user_id, presence: true, numericality: true
	validates :title, presence: true
	validates :post_text, presence: true
end
