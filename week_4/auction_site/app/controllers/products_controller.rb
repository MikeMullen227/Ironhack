class ProductsController < ApplicationController

	def index
		@products = Product.order(created_at: :desc)
				.limit(10)
		render 'index'
	end

	def show
		@product = Product.find_by(id: params[:id])
			unless @product
				render "no projects_found"
		
	end

	def new
		@product = Product.new
		render 'new'
	end

	def create

		@product = Product.new(
			title: params[:product][:title],
			description: params[:product][:description]
			deadline: params[:product][:deadline]
		)
		@product.save

		redirect_to "/products/#{@product.id}"
		render 'create'
	end

	def destroy

		render 'destroy'
	end

		
	end
end
