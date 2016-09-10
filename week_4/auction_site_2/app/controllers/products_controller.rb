class ProductsController < ApplicationController
	
	def index
		@user=User.find(params[:user_id])
		@products= @user.products
	end


	# def show
	# 	@product = Product.find_by(id: params[:id])
	# 		unless @product
	# 		render 'no projects found'
	# end

	def new 
	    @user = User.find(params[:user_id])
		@product = @user.products.new
		
	end

	def create
		@user = User.find(params[:user_id])
		@product = user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
			)
		project.save

		redirect_to "/"
	end

end

