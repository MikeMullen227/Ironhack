class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc)
				.limit(10)
		render 'index'
	end

	def show
		# display a single project from an id
		@project = Project.find_by(id: params[:index])

		# if ! @project same thing
		unless @project
			render 'no_projects_found'
		end
	end

	def new
		@project = Project.new
	end

	def create
		# Create a new project from the parameters passed in the form
		project = Project.new(
		name: params[:project][:name],
		description: params[:project][:description]
	)

		project.save

		redirect_to "/projects/#{project.id}"
	end

end
