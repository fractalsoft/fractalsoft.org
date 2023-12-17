# frozen_string_literal: true

# Amazon DynamoDB
technology_aws_dynamodb = Technology.where(slug: 'aws-dynamodb').first_or_initialize
icon_aws_dynamodb_svg = File.read('./db/seeds/technology/svg/aws-dynamodb.svg')
technology_aws_dynamodb.assign_attributes(
  icon: icon_aws_dynamodb_svg,
  name: 'Amazon DynamoDB',
  title: 'Amazon DynamoDB',
  website_url: 'https://aws.amazon.com/dynamodb/'
)
technology_aws_dynamodb.save
technology_aws_dynamodb.amazon_web_services!
