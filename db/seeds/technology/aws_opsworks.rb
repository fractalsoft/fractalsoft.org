# AWS OpsWorks
# https://aws.amazon.com/opsworks/
technology_aws_opsworks = Technology.where(slug: 'aws-opsworks').first_or_initialize
icon_aws_opsworks_svg = File.read('./db/seeds/technology/svg/aws-opsworks.svg')
technology_aws_opsworks.assign_attributes(
  name: 'AWS OpsWorks',
  title: 'AWS OpsWorks',
  icon: icon_aws_opsworks_svg
)
technology_aws_opsworks.save
technology_aws_opsworks.amazon_web_services!
