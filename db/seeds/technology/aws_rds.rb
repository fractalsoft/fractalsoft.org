# frozen_string_literal: true

# Amazon RDS
technology_aws_rds = Technology.where(slug: 'aws-rds').first_or_initialize
icon_aws_rds_svg = File.read('./db/seeds/technology/svg/aws-rds.svg')
technology_aws_rds.assign_attributes(
  icon: icon_aws_rds_svg,
  name: 'Amazon RDS',
  title: 'Amazon RDS',
  website_url: 'https://aws.amazon.com/rds/'
)
technology_aws_rds.save
technology_aws_rds.amazon_web_services!
