# Nginx Open Source
technology_nginx = Technology.where(slug: 'nginx').first_or_initialize
icon_nginx_original_svg = File.read('./db/seeds/technology/svg/nginx-original.svg')
technology_nginx.assign_attributes(
  icon: icon_nginx_original_svg,
  name: 'nginx',
  title: 'Nginx',
  website_url: 'https://nginx.org/'
)
technology_nginx.save
technology_nginx.web_server!
