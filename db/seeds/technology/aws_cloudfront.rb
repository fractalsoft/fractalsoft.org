# frozen_string_literal: true

# Amazon CloudFront
technology_aws_cloudfront = Technology.where(slug: 'aws-cloudfront').first_or_initialize
icon_aws_cloudfront_svg = File.read('./db/seeds/technology/svg/aws-cloudfront.svg')
technology_aws_cloudfront.assign_attributes(
  icon: icon_aws_cloudfront_svg,
  name: 'Amazon CloudFront',
  title: 'Amazon CloudFront',
  website_url: 'https://aws.amazon.com/cloudfront/'
)
technology_aws_cloudfront.save
technology_aws_cloudfront.amazon_web_services!
