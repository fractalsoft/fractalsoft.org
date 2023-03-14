# Terraform
# https://www.terraform.io/
technology_terraform = Technology.where(slug: 'terraform').first_or_initialize
icon_terraform_original_svg = File.read('./db/seeds/technology/svg/terraform-original.svg')
icon_terraform_wordmark_svg = File.read('./db/seeds/technology/svg/terraform-original-wordmark.svg')
technology_terraform.assign_attributes(
  name: 'Terraform',
  title: 'Terraform',
  icon: icon_terraform_original_svg,
  icon_wordmark: icon_terraform_wordmark_svg
)
technology_terraform.save
technology_terraform.tool!
