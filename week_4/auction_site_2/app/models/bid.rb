class Bid < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :amount, presence: true	
	belongs_to :product
	belongs_to :user
end
