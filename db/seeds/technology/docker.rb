# Docker
# https://www.docker.com/
technology_docker = Technology.where(slug: 'docker').first_or_initialize
icon_docker_original_svg = File.read('./db/seeds/technology/svg/docker-original.svg')
icon_docker_wordmark_svg = File.read('./db/seeds/technology/svg/docker-original-wordmark.svg')
technology_docker.assign_attributes(
  name: 'docker',
  title: 'docker',
  icon: icon_docker_original_svg,
  icon_wordmark: icon_docker_wordmark_svg
)
technology_docker.save
technology_docker.tool!
