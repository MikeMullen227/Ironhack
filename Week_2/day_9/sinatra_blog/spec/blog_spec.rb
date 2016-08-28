

require_relative ("../lib/post.rb")
require_relative ("../lib/blog.rb")

RSpec.describe Blog do

	
  describe "#add_post" do

    it "adds a post to the blog page" do
      the_blog = Blog.new
      post1 = Post.new("My first post", "8/25/16", "Here we go!")
     
     the_blog.add_post(post1)

      expect(the_blog.all_posts.length).to eq(1)
    end
  end



  describe "#latest_posts" do

    it "orders the posts by latest date in the array of posts" do
      the_blog = Blog.new
      post1 = Post.new("My second post", "2013/7/16", "Here we go!")
      post2 = Post.new("My third post", "2016/3/9", "Cool dude!")
      post3 = Post.new("My first post", "2014/6/2", "Lets Party!")

     the_blog.add_post(post1)
     the_blog.add_post(post2)
     the_blog.add_post(post3)
     the_blog.latest_posts
     


      expect(the_blog.all_posts[0]).to eq(post2)
    end
  end
end
