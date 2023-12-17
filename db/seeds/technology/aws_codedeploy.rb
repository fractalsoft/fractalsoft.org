# frozen_string_literal: true

# AWS CodeDeploy
technology_aws_codedeploy = Technology.where(slug: 'aws-codedeploy').first_or_initialize
icon_aws_codedeploy_svg = File.read('./db/seeds/technology/svg/aws-codedeploy.svg')
technology_aws_codedeploy.assign_attributes(
  icon: icon_aws_codedeploy_svg,
  name: 'AWS CodeDeploy',
  title: 'AWS CodeDeploy',
  website_url: 'https://aws.amazon.com/codedeploy/'
)
technology_aws_codedeploy.save
technology_aws_codedeploy.amazon_web_services!
