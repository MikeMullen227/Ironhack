
require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require "sinatra"

	  the_blog = Blog.new
 	  post1 = Post.new("My first post", "2013/7/16", "My favorite movies")
      post2 = Post.new("My second post", "2014/3/9", "Games I like to play")
      post3 = Post.new("My third post", "2016/6/2", "My hometown")

      the_blog.add_post(post1)
      the_blog.add_post(post2)
      the_blog.add_post(post3)


get "/" do
	@posts = the_blog.latest_posts
	erb :home
end

get "/post/:id" do
	the_number = params[:id].to_i
	@index = the_blog.latest_posts[the_number]
	erb :post_details
end

get "/new_post" do
	erb :new_post

end

post "/submit_post" do
	the_title = params[:title]
	the_text = params[:text]
	the_diggity_date = params[:date]

	new_post = Post.new(the_title, the_diggity_date, the_text)
	the_blog.add_post(new_post)
	redirect("/")
	
end
