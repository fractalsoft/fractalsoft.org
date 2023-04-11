# Amazon EC2
# https://aws.amazon.com/ec2/
technology_aws_ec2 = Technology.where(slug: 'aws-ec2').first_or_initialize
icon_aws_ec2_svg = File.read('./db/seeds/technology/svg/aws-ec2.svg')
technology_aws_ec2.assign_attributes(
  name: 'Amazon EC2',
  title: 'Amazon EC2',
  icon: icon_aws_ec2_svg
)
technology_aws_ec2.save
technology_aws_ec2.amazon_web_services!
