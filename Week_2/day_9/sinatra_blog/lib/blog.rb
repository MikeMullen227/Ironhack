
class Blog
	attr_accessor(:all_posts)
	def initialize()
	@all_posts = []
	end

	def add_post(the_post)
		@all_posts.push(the_post)
	end

	def latest_posts
		@all_posts.sort! {|a,b| b.date <=> a.date}
	end
end
