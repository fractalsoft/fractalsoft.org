# Amazon QuickSight
# https://aws.amazon.com/quicksight/
technology_aws_quicksight = Technology.where(slug: 'aws-quicksight').first_or_initialize
icon_aws_quicksight_svg = File.read('./db/seeds/technology/svg/aws-quicksight.svg')
technology_aws_quicksight.assign_attributes(
  name: 'Amazon QuickSight',
  title: 'Amazon QuickSight',
  icon: icon_aws_quicksight_svg
)
technology_aws_quicksight.save
technology_aws_quicksight.amazon_web_services!
