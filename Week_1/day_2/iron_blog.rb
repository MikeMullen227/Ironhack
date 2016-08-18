

class Blog 
	def initialize()
	@all_posts = []
	end

	def add_post(the_post)
		@all_posts.push(the_post)
	end
	def print_out
		@all_posts.each do |output|

			sponsored(output)
			puts output.title
			puts "***************"
			puts output.text
			puts "---------------"
		end
	end

		def sponsored(post)
			if post.sponsored == true
				post.title = "*******#{post.title}*******" 
			end
		

	
		end

end


class Post
	attr_accessor(:sponsored, :title, :date, :text)
	def initialize(sponsored, title, date, text)
		@sponsored = sponsored
		@title = title
		@date = date
		@text = text
	end



end


#--------------Application Code--------------#



blog = Blog.new
blog.add_post Post.new(false, "My latest recipes", "8/16/16" , "askdhjfpoqweurkjd;jasfij")
blog.add_post Post.new(true, "My favorite movies", "8/15/16", "jqoewiurnadsjklfnnlcz")
blog.add_post Post.new(false, "Sports I play", "8/14/16", "opiquerwklsadfasdf")

blog.print_out