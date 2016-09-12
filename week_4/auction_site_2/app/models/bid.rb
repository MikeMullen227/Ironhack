class Bid < ApplicationRecord
	validates :user_id, presence: true, uniqueness: true
	validates :amount, presence: true	
	belongs_to :product
	belongs_to :user
end
