# Amazon Web Services
# https://aws.amazon.com
technology_aws = Technology.where(slug: 'aws').first_or_initialize
icon_aws_original_svg = File.read('./db/seeds/technology/svg/amazonwebservices-original.svg')
icon_aws_wordmark_svg = File.read('./db/seeds/technology/svg/amazonwebservices-original-wordmark.svg')
technology_unity.assign_attributes(
  name: 'AWS',
  title: 'Amazon Web Services',
  icon: icon_aws_original_svg,
  icon_wordmark: icon_aws_wordmark_svg
)
technology_aws.save
technology_aws.cloud_computing!
