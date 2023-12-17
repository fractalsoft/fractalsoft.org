# frozen_string_literal: true

# Amazon S3 Glacier
technology_aws_glacier = Technology.where(slug: 'aws-glacier').first_or_initialize
icon_aws_glacier_svg = File.read('./db/seeds/technology/svg/aws-glacier.svg')
technology_aws_glacier.assign_attributes(
  icon: icon_aws_glacier_svg,
  name: 'Amazon S3 Glacier',
  title: 'Amazon S3 Glacier',
  website_url: 'https://aws.amazon.com/s3/storage-classes/glacier/'
)
technology_aws_glacier.save
technology_aws_glacier.amazon_web_services!
