class TimeEntriesController < ApplicationController


	def edit
		#Input
		# - params[:project_id]
		# - params[:id]

		#Output
		# - the edit form
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

	end

	def index
		#input 
		# - project id under params[:id]
		#output
		# - all entries for the project
		# 1. Find the project.
		# 2. Get all time entries for the project

		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(date: Time.now.beginning_of_month..Time.now.end_of_month)
	end




	def new
		#Input
		# - params[:project_id]
		# 1. Find the project
		# 2. Instantiate new time entry for the project
		



		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create 
		#Input
		# - params[:project_id]
		# - params[:time_entry]
		#1. find the project
		#2. instantiate the new time entry with time_entry params
		#3. save the time entry
		#4. redirect back projects
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.new(
			minutes: params[:time_entry][:minutes],
			hours: params[:time_entry][:hours],
			date: params[:time_entry][:date],
		)
		time_entry.save

		redirect_to "/projects/#{project.id}/time_entries"
	end


	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])
		
		if time_entry.update(
			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date],
			)
			redirect_to "/projects/#{project.id}/time_entries"
		else
			redirect_to "/projects/#{project.id}/time_entries/#{time_entry.id}/edit"
		end
	end
end