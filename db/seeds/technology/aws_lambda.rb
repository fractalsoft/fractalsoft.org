# frozen_string_literal: true

# AWS Lambda
technology_aws_lambda = Technology.where(slug: 'aws-lambda').first_or_initialize
icon_aws_lambda_svg = File.read('./db/seeds/technology/svg/aws-lambda.svg')
technology_aws_lambda.assign_attributes(
  icon: icon_aws_lambda_svg,
  name: 'AWS Lambda',
  title: 'AWS Lambda',
  website_url: 'https://aws.amazon.com/lambda/'
)
technology_aws_lambda.save
technology_aws_lambda.amazon_web_services!
