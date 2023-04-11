# Jenkins
# https://www.jenkins.io/
technology_jenkins = Technology.where(slug: 'jenkins').first_or_initialize
icon_jenkins_original_svg = File.read('./db/seeds/technology/svg/jenkins-original.svg')
technology_jenkins.assign_attributes(
  name: 'Jenkins',
  title: 'Jenkins',
  icon: icon_jenkins_original_svg
)
technology_jenkins.save
technology_jenkins.continuous_integration!
