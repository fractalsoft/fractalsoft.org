# Google Cloud
technology_gcloud = Technology.where(slug: 'google-cloud').first_or_initialize
icon_gcloud_original_svg = File.read('./db/seeds/technology/svg/googlecloud-original.svg')
icon_gcloud_wordmark_svg = File.read('./db/seeds/technology/svg/googlecloud-original-wordmark.svg')
technology_gcloud.assign_attributes(
  icon: icon_gcloud_original_svg,
  icon_wordmark: icon_gcloud_wordmark_svg,
  name: 'gcloud',
  title: 'Google Cloud',
  website_url: 'https://cloud.google.com/'
)
technology_gcloud.save
technology_gcloud.cloud_computing!
