class TextInspectionsController < ApplicationController
	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length

		@second_word_count = @text.split(" ")

		@frequency = {}
		@second_word_count.each do |word|
			if @frequency[word] 
				@frequency[word]+=1
			else
				@frequency[word] = 1
			end

		

		end
		@sorted = @frequency.sort_by {|a, b| b}.reverse
		render "results"
	end
end
