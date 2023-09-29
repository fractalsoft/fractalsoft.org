class ExternalLink
  include ActionView::Context
  include ActionView::Helpers
  include ::ApplicationHelper

  ICONS_FOR_LINKS = {
    blog: '/icons/common/blog/blogger.svg',
    facebook: '/icons/social-media/facebook/facebook-original.svg',
    github: '/icons/technology/github/github-original.svg',
    instagram: '/icons/social-media/instagram/instagram-original.svg',
    linkedin: '/icons/social-media/linkedin/linkedin-original.svg',
    twitter: '/icons/social-media/twitter/twitter-original.svg',
    vimeo: '/icons/social-media/vimeo/vimeo-original.svg',
    website: '/icons/common/website/website.svg',
    youtube: '/icons/social-media/youtube/youtube-original.svg'
  }.freeze
  private_constant :ICONS_FOR_LINKS

  def initialize(link_type:, url: '#')
    @link_type = link_type
    @url = url
  end

  def link(title: nil)
    return unless url

    title ||= I18n.t("social.title.#{link_type}")
    link_to(icon, url, title:, rel: 'noopener', target: '_blank')
  end

  private

  attr_reader :link_type, :title, :url

  def icon
    content_tag :span, class: 'icon' do
      svg_path = Rails.public_path.join(*image_url.split('/'))
      svg_body = File.read(svg_path)
      embedded_svg svg_body, options: { height: '32px', width: '32px' }
    end
  end

  def image_url
    ICONS_FOR_LINKS[link_type.to_sym]
  end
end
