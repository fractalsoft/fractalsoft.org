# frozen_string_literal: true

# Amazon Cognito
technology_aws_cognito = Technology.where(slug: 'aws-cognito').first_or_initialize
icon_aws_cognito_svg = File.read('./db/seeds/technology/svg/aws-cognito.svg')
technology_aws_cognito.assign_attributes(
  icon: icon_aws_cognito_svg,
  name: 'Amazon Cognito',
  title: 'Amazon Cognito',
  website_url: 'https://aws.amazon.com/cognito/'
)
technology_aws_cognito.save
technology_aws_cognito.amazon_web_services!
