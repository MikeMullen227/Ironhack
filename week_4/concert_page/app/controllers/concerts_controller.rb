class ConcertsController < ApplicationController


	def home
		@concerts = Concert.where("date >= ?", Time.now).where("date <= ?", Time.now.end_of_day)
		@concerts_later = Concert.where("date >= ?", Time.now.end_of_day).where("date <= ?", Time.now.end_of_month)
	end

	def index
		@concerts = Concert.all
		
	end
	def new
		@concert = Concert.new
		
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			city: params[:concert][:city],
			venue: params[:concert][:venue],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description]
			)



        
        if @concert.save
            redirect_to "/concerts"
        else
            render 'new'
        end
    end




	def show
			# display a single project from an id
		@concert = Concert.find_by(id: params[:id])
		@comments = @concert.comments
		@new_comment = @concert.comments.new
		

		# if ! @project same thing
		# unless @concert
		# 	render 'no_projects_found'
		# end
	end

	def edit

	end

	def update 

	end

	def destroy

	end

end