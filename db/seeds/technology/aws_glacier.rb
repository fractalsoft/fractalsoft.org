# Amazon S3 Glacier
# https://aws.amazon.com/s3/storage-classes/glacier/
technology_aws_glacier = Technology.where(slug: 'aws-glacier').first_or_initialize
icon_aws_glacier_svg = File.read('./db/seeds/technology/svg/aws-glacier.svg')
technology_aws_glacier.assign_attributes(
  name: 'Amazon S3 Glacier',
  title: 'Amazon S3 Glacier',
  icon: icon_aws_glacier_svg
)
technology_aws_glacier.save
technology_aws_glacier.amazon_web_services!
