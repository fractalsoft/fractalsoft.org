# Amazon SES
technology_aws_ses = Technology.where(slug: 'aws-ses').first_or_initialize
icon_aws_ses_svg = File.read('./db/seeds/technology/svg/aws-ses.svg')
technology_aws_ses.assign_attributes(
  icon: icon_aws_ses_svg,
  name: 'Amazon SES',
  title: 'Amazon SES',
  website_url: 'https://aws.amazon.com/ses/'
)
technology_aws_ses.save
technology_aws_ses.amazon_web_services!
