# frozen_string_literal: true

# AWS Identity and Access Management (IAM)
technology_aws_iam = Technology.where(slug: 'aws-iam').first_or_initialize
icon_aws_iam_svg = File.read('./db/seeds/technology/svg/aws-iam.svg')
technology_aws_iam.assign_attributes(
  icon: icon_aws_iam_svg,
  name: 'AWS IAM',
  title: 'AWS Identity and Access Management (IAM)',
  website_url: 'https://aws.amazon.com/iam/'
)
technology_aws_iam.save
technology_aws_iam.amazon_web_services!
