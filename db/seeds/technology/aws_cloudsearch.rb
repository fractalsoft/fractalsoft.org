# Amazon CloudSearch
# https://aws.amazon.com/cloudsearch/
technology_aws_cloudsearch = Technology.where(slug: 'aws-cloudsearch').first_or_initialize
icon_aws_cloudsearch_svg = File.read('./db/seeds/technology/svg/aws-cloudsearch.svg')
technology_aws_cloudsearch.assign_attributes(
  name: 'Amazon CloudSearch',
  title: 'Amazon CloudSearch',
  icon: icon_aws_cloudsearch_svg
)
technology_aws_cloudsearch.save
technology_aws_cloudsearch.amazon_web_services!
