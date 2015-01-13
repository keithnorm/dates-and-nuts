module Jekyll
  module TopPostFilter

    def filter_by_top_posts(posts, top_posts)
      puts "TOP ARE"
      puts top_posts
      posts.select { |post|
        puts "URL IS"
        puts post.slug
        top_posts.include? post.slug
      }
    end
  end
end

Liquid::Template.register_filter(Jekyll::TopPostFilter)
