module ExternalLink
  class Instagram < Base
    private

    def image_url
      '/icons/social-media/instagram/instagram-original.svg'
    end

    def url
      "https://instagram.com/#{path}"
    end
  end
end
