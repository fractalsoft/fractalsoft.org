module ExternalLink
  class Youtube < Base
    private

    def image_url
      '/icons/social-media/youtube/youtube-original.svg'
    end

    def url
      "https://youtube.com/#{path}"
    end
  end
end
