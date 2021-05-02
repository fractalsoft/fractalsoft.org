module ExternalLink
  class Facebook < Base
    private

    def image_url
      '/icons/social-media/facebook/facebook-original.svg'
    end

    def url
      "https://facebook.com/#{path}"
    end
  end
end
