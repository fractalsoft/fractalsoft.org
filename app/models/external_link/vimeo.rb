module ExternalLink
  class Vimeo < Base
    private

    def image_url
      '/icons/social-media/vimeo/vimeo-original.svg'
    end

    def url
      "https://vimeo.com/#{path}"
    end
  end
end
