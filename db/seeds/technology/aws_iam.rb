# AWS Identity and Access Management (IAM)
# https://aws.amazon.com/iam/
technology_aws_iam = Technology.where(slug: 'aws-iam').first_or_initialize
icon_aws_iam_svg = File.read('./db/seeds/technology/svg/aws-iam.svg')
technology_aws_iam.assign_attributes(
  name: 'AWS IAM',
  title: 'AWS Identity and Access Management (IAM)',
  icon: icon_aws_iam_svg
)
technology_aws_iam.save
technology_aws_iam.amazon_web_services!
