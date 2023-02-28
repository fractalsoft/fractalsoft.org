# Nginx Open Source
# https://nginx.org/
technology_nginx = Technology.where(slug: 'nginx').first_or_initialize
icon_nginx_original_svg = File.read('./db/seeds/technology/svg/nginx-original.svg')
technology_nginx.assign_attributes(
  name: 'nginx',
  title: 'Nginx',
  icon: icon_nginx_original_svg
)
technology_nginx.save
technology_nginx.web_server!
