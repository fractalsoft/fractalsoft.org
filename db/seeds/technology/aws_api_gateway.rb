# frozen_string_literal: true

# Amazon API Gateway
technology_aws_api_gateway = Technology.where(slug: 'aws-api-gateway').first_or_initialize
icon_aws_api_gateway_svg = File.read('./db/seeds/technology/svg/aws-api-gateway.svg')
technology_aws_api_gateway.assign_attributes(
  icon: icon_aws_api_gateway_svg,
  name: 'Amazon API Gateway',
  title: 'Amazon API Gateway',
  website_url: 'https://aws.amazon.com/api-gateway/'
)
technology_aws_api_gateway.save
technology_aws_api_gateway.amazon_web_services!
