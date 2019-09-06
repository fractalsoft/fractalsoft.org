module ExternalLink
  class Twitter < Base
    private

    def image_url
      '/icons/social-media/twitter/twitter-original.svg'
    end

    def url
      "https://twitter.com/#{path}"
    end
  end
end
