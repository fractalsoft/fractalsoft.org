# Amazon SQS
# https://aws.amazon.com/sqs/
technology_aws_sqs = Technology.where(slug: 'aws-sqs').first_or_initialize
icon_aws_sqs_svg = File.read('./db/seeds/technology/svg/aws-sqs.svg')
technology_aws_sqs.assign_attributes(
  name: 'Amazon SQS',
  title: 'Amazon SQS',
  icon: icon_aws_sqs_svg
)
technology_aws_sqs.save
technology_aws_sqs.amazon_web_services!
