class ProductsController < ApplicationController
	
	def index
		# @user = User.find(params[:user_id])
		@products = Product.all
	end


	def show
		@product = Product.find(params[:id])
		unless @product
			render 'no products found'
		end
		@bids = @product.bids

	end

	def new 
	    @user = User.find(params[:user_id])
		@product = @user.products.new
		
	end

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
			)
		@product.save

		redirect_to "/"
	end

	def destroy 
	    
	end

end

