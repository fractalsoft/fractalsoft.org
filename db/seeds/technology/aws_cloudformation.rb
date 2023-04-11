# AWS CloudFormation
# https://aws.amazon.com/cloudformation/
technology_aws_cloudformation = Technology.where(slug: 'aws-cloudformation').first_or_initialize
icon_aws_cloudformation_svg = File.read('./db/seeds/technology/svg/aws-cloudformation.svg')
technology_aws_cloudformation.assign_attributes(
  name: 'AWS CloudFormation',
  title: 'AWS CloudFormation',
  icon: icon_aws_cloudformation_svg
)
technology_aws_cloudformation.save
technology_aws_cloudformation.amazon_web_services!
