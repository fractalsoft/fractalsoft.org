# AWS Lambda
# https://aws.amazon.com/lambda/
technology_aws_lambda = Technology.where(slug: 'aws-lambda').first_or_initialize
icon_aws_lambda_svg = File.read('./db/seeds/technology/svg/aws-lambda.svg')
technology_aws_lambda.assign_attributes(
  name: 'AWS Lambda',
  title: 'AWS Lambda',
  icon: icon_aws_lambda_svg
)
technology_aws_lambda.save
technology_aws_lambda.amazon_web_services!
