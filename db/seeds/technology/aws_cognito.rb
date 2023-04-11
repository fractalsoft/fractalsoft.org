# Amazon Cognito
# https://aws.amazon.com/cognito/
technology_aws_cognito = Technology.where(slug: 'aws-cognito').first_or_initialize
icon_aws_cognito_svg = File.read('./db/seeds/technology/svg/aws-cognito.svg')
technology_aws_cognito.assign_attributes(
  name: 'Amazon Cognito',
  title: 'Amazon Cognito',
  icon: icon_aws_cognito_svg
)
technology_aws_cognito.save
technology_aws_cognito.amazon_web_services!
