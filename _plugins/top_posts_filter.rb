module Jekyll
  module TopPostFilter

    def filter_by_top_posts(posts, top_posts)
      posts.select { |post|
        top_posts.include? post.slug
      }
    end
  end
end

Liquid::Template.register_filter(Jekyll::TopPostFilter)
