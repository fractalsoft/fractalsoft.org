# AWS WAF
technology_aws_waf = Technology.where(slug: 'aws-waf').first_or_initialize
icon_aws_waf_svg = File.read('./db/seeds/technology/svg/aws-waf.svg')
technology_aws_waf.assign_attributes(
  icon: icon_aws_waf_svg,
  name: 'AWS WAF',
  title: 'AWS WAF',
  website_url: 'https://aws.amazon.com/waf/'
)
technology_aws_waf.save
technology_aws_waf.amazon_web_services!
