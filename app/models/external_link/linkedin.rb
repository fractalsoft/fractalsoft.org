module ExternalLink
  class Linkedin < Base
    private

    def image_url
      '/icons/social-media/linkedin/linkedin-original.svg'
    end

    def url
      "https://linkedin.com/in/#{path}"
    end
  end
end
