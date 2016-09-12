class BidsController < ApplicationController
	def index
		@bids = Bid.all
	end




	def create
		@bid = Bid.new(
			amount: params[:product][:amount],
			id: params[:user][:id],
			product_id: params[:product][:id]

			)
		@bid.save

		redirect_to "/"
		
	end
end
