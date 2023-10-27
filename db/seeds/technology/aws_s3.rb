# Amazon S3
technology_aws_s3 = Technology.where(slug: 'aws-s3').first_or_initialize
icon_aws_s3_svg = File.read('./db/seeds/technology/svg/aws-s3.svg')
technology_aws_s3.assign_attributes(
  icon: icon_aws_s3_svg,
  name: 'Amazon S3',
  title: 'Amazon S3',
  website_url: 'https://aws.amazon.com/s3/'
)
technology_aws_s3.save
technology_aws_s3.amazon_web_services!
