module ExternalLink
  class Github < Base
    private

    def image_url
      '/icons/technology/github/github-original.svg'
    end

    def url
      "https://github.com/#{path}"
    end
  end
end
