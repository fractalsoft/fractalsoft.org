module ExternalLink
  class Blog < Base
    private

    def image_url
      '/icons/common/blog/blogger.svg'
    end

    def options
      { target: '_blank' }
    end

    def url
      path.to_s
    end
  end
end
