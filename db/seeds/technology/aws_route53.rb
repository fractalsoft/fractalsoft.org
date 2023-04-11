# Amazon Route 53
# https://aws.amazon.com/route53/
technology_aws_route53 = Technology.where(slug: 'aws-route53').first_or_initialize
icon_aws_route53_svg = File.read('./db/seeds/technology/svg/aws-route53.svg')
technology_aws_route53.assign_attributes(
  name: 'Amazon Route 53',
  title: 'Amazon Route 53',
  icon: icon_aws_route53_svg
)
technology_aws_route53.save
technology_aws_route53.amazon_web_services!
