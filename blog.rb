require 'date'

class Blog

	def initialize(name)
		@name = name
		@posts = []	
	end

	def add_post(input)
		@posts.push(input)
	end

	def publish_front_page
		
		@posts.sort! {|a,b| b.date <=> a.date}

		@posts.each do |item|

			if item.sponsored === true
				puts ""
				puts "******#{item.title}******   .....   Written on #{item.date}"
				puts "========================================================="
				puts "#{item.text}"
				puts "========================================================="
				puts ""
			else
				puts ""
				puts "#{item.title}   .....   Written on #{item.date}"
				puts "========================================================="
				puts "#{item.text}"
				puts "========================================================="
				puts ""
			end
		end
	end
end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end


post1 = Post.new("Blog Post 1", "2016/08/01", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", false)
post2 = Post.new("Blog Post 2", "2016/08/03", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", false)
post3 = Post.new("Blog Post 3", "2016/08/05", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", false)
post4 = Post.new("Blog Post 4", "2016/08/07", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", false)
post5 = Post.new("Blog Post 5", "2016/08/09", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", false)
post6 = Post.new("Blog Post 6", "2016/08/12", "7:12pm - I am sitting on a couch in Building.co's second floor. I am learning Ruby with Frank, Chris and Steven. We are drinking beers. All is good.", true)



blog1 = Blog.new("Dan's Blog")
blog1.add_post(post1)
blog1.add_post(post2)
blog1.add_post(post3)
blog1.add_post(post4)
blog1.add_post(post5)
blog1.add_post(post6)

blog1.publish_front_page



