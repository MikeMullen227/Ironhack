class UsersController < ApplicationController

	def show
		@user = User.find_by(id: params[:id])
		render 'show'
	end

	def create
		@user = User.new(
			name: params[:user][:name],
			email: params[:user][:email]
			)


		@user.save	

	end

	def new
		@user = User.new
	end

	def destroy

	end

end
