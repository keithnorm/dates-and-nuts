module Jekyll
  class TagUrl < Liquid::Tag

    def initialize(tag_name, tag, token)
      super
      @tag = tag
    end

    def render(context)
      "/tag/#{ context[@tag]['slug']}"
    end
  end
end

Liquid::Template.register_tag('tag_url', Jekyll::TagUrl)
