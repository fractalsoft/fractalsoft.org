# Amazon CloudWatch
technology_aws_cloudwatch = Technology.where(slug: 'aws-cloudwatch').first_or_initialize
icon_aws_cloudwatch_svg = File.read('./db/seeds/technology/svg/aws-cloudwatch.svg')
technology_aws_cloudwatch.assign_attributes(
  icon: icon_aws_cloudwatch_svg,
  name: 'Amazon CloudWatch',
  title: 'Amazon CloudWatch',
  website_url: 'https://aws.amazon.com/cloudwatch/'
)
technology_aws_cloudwatch.save
technology_aws_cloudwatch.amazon_web_services!
