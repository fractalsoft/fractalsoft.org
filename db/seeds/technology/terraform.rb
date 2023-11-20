# Terraform
technology_terraform = Technology.where(slug: 'terraform').first_or_initialize
icon_terraform_original_svg = File.read('./db/seeds/technology/svg/terraform-original.svg')
icon_terraform_wordmark_svg = File.read('./db/seeds/technology/svg/terraform-original-wordmark.svg')
technology_terraform.assign_attributes(
  emoji: '🌍🏗️',
  github_repo: 'hashicorp/terraform',
  icon: icon_terraform_original_svg,
  icon_wordmark: icon_terraform_wordmark_svg,
  name: 'Terraform',
  title: 'Terraform',
  website_url: 'https://www.terraform.io/'
)
technology_terraform.save
technology_terraform.tool!
