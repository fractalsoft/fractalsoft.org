# frozen_string_literal: true

# Amazon SNS
technology_aws_sns = Technology.where(slug: 'aws-sns').first_or_initialize
icon_aws_sns_svg = File.read('./db/seeds/technology/svg/aws-sns.svg')
technology_aws_sns.assign_attributes(
  icon: icon_aws_sns_svg,
  name: 'Amazon SNS',
  title: 'Amazon SNS',
  website_url: 'https://aws.amazon.com/sns/'
)
technology_aws_sns.save
technology_aws_sns.amazon_web_services!
