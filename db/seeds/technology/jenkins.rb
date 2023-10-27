# Jenkins
technology_jenkins = Technology.where(slug: 'jenkins').first_or_initialize
icon_jenkins_original_svg = File.read('./db/seeds/technology/svg/jenkins-original.svg')
technology_jenkins.assign_attributes(
  icon: icon_jenkins_original_svg,
  name: 'Jenkins',
  title: 'Jenkins',
  website_url: 'https://www.jenkins.io/'
)
technology_jenkins.save
technology_jenkins.continuous_integration!
