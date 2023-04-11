# Amazon Kinesis
# https://aws.amazon.com/kinesis/
technology_aws_kinesis = Technology.where(slug: 'aws-kinesis').first_or_initialize
icon_aws_kinesis_svg = File.read('./db/seeds/technology/svg/aws-kinesis.svg')
technology_aws_kinesis.assign_attributes(
  name: 'Amazon Kinesis',
  title: 'Amazon Kinesis',
  icon: icon_aws_kinesis_svg
)
technology_aws_kinesis.save
technology_aws_kinesis.amazon_web_services!