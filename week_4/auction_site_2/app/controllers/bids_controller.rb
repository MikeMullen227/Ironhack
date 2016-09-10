class BidsController < ApplicationController
	def index
		@bids = Bid.new()
	end

	def new
		
	end
end
