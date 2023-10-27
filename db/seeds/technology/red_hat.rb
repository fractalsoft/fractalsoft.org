# Red Hat
technology_red_hat_linux = Technology.where(slug: 'red-hat-linux').first_or_initialize
icon_red_hat_original_svg = File.read('./db/seeds/technology/svg/redhat-original.svg')
icon_red_hat_wordmark_svg = File.read('./db/seeds/technology/svg/redhat-original-wordmark.svg')
technology_red_hat_linux.assign_attributes(
  icon: icon_red_hat_original_svg,
  icon_wordmark: icon_red_hat_wordmark_svg,
  name: 'Red Hat',
  title: 'Red Hat Linux',
  website_url: 'https://www.redhat.com/'
)
technology_red_hat_linux.save
technology_red_hat_linux.operating_system!
